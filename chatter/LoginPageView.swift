//
//  LoginPageView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct LoginPageView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isLoginMode = true
    @State private var showPassword = false
    @State private var showConfirmPassword = false
    @State private var validationError: String?
    @State private var navigateToStartingPage = false
    @State private var navigateToLanguageSelection = false

    var body: some View {
        NavigationStack {
            ZStack {
                // Background
                LinearGradient(gradient: Gradient(colors: [.darkPurple, .midPurple]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)

                VStack(spacing: 16) {
                    Text(isLoginMode ? "Login" : "Register")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.pink)

                    Picker(selection: $isLoginMode, label: Text("")) {
                        Text("Login")
                            .tag(true)
                        Text("Register")
                            .tag(false)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()

                    Group {
                        if !isLoginMode {
                            CustomTextField(placeholder: "Username", text: $username)
                        }
                        CustomTextField(placeholder: "Email", text: $email)

                        CustomSecureField(placeholder: "Password", text: $password, showPassword: $showPassword)

                        if !isLoginMode {
                            CustomSecureField(placeholder: "Confirm Password", text: $confirmPassword, showPassword: $showConfirmPassword)
                        }
                    }

                    if let error = validationError {
                        Text(error)
                            .foregroundColor(.red)
                            .font(.footnote)
                    }

                    Button(action: {
                        if validateForm() {
                            if isLoginMode {
                                navigateToStartingPage = true
                            } else {
                                navigateToLanguageSelection = true
                            }
                        }
                    }) {
                        Text(isLoginMode ? "Login" : "Register")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.brightPurple)
                            .cornerRadius(10)
                    }

                    DividerView(text: "or")

                    VStack(spacing: 10) {
                        Text(isLoginMode ? "Login with" : "Sign up with")
                            .foregroundColor(.white)

                        HStack(spacing: 20) {
                            SignInWithAppleButton()
                            SignInWithGoogleButton()
                        }
                    }

                    Spacer()
                }
                .padding(.horizontal, 32)
                .navigationDestination(isPresented: $navigateToStartingPage) {
                    StartingPageView()
                }
                .navigationDestination(isPresented: $navigateToLanguageSelection) {
                    LanguageSelectionView()
                }
            }
        }
    }

    private func validateForm() -> Bool {
        if !isLoginMode && username.isEmpty {
            validationError = "Username is required"
            return false
        }
        if email.isEmpty || !isValidEmail(email) {
            validationError = "Please enter a valid email address"
            return false
        }
        if password.isEmpty {
            validationError = "Password is required"
            return false
        }
        if !isLoginMode && password != confirmPassword {
            validationError = "Passwords do not match"
            return false
        }
        validationError = nil
        return true
    }

    private func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
