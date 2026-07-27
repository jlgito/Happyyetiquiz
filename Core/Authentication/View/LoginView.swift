//
//  LoginView.swift
//  Duolingo
//
//  Created by Apprenant133 on 15/03/2025.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPressed = false
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
//Logo
                Image("yetich")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .padding(.vertical, 32)
                
//Formulaire connexion
                VStack(spacing: 24) {
//Adresse email
                    InputView(text: $email,
                              title: "Adresse e-mail",
                              placeholder: "tonadresse@icloud.com")
                    .autocapitalization(.none)
//Mot de passe
                    InputView(text: $password,
                              title: "Mot de passe",
                              placeholder: "Le mot de passe tu l'as ?",
                              isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                                
//Bouton connexion
                ZStack {
//Ombre
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                        .padding(.top, 20)
//Bouton
                    Button{
                        NotificationManager.instance.requestNotificationPermission()
                        Task {
                            
                            
                            try await viewModel.signIn(withEmail: email, password: password)
                        }
                        NotificationManager.instance.scheduleNotification()
                    } label: {
                        HStack {
                            Text("CONNEXION")
                                .fontWeight(.semibold)
//                            Image(systemName: "arrow.right")
                        }
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                    }
                    .background(formIsValid ? Color.blue : Color.blue)
                    .disabled(!formIsValid)
                    .opacity(formIsValid ? 1 : 0.5)
                    .cornerRadius(10)
                    .padding(.top, 20)
                    .buttonStyle(boutonstylé())
                    .offset(y: formIsValid ? 0 : 4)
                    .offset(y: isPressed && formIsValid ? 0 : -4)
                    .simultaneousGesture(
                        DragGesture(minimumDistance: 0)
                            .onChanged { _ in
                                isPressed = true
                            }
                            .onEnded { _ in
                                isPressed = false
                            }
                    )
                    .sensoryFeedback(.impact, trigger: isPressed)
                }
                
                Spacer()
                
//Bouton page incription
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack (spacing: 3) {
                        Text("T'as pas encore de compte?")
                        Text("C'est par là!")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}

// MARK: - AuthenticationFormProtocol
//Conditions requises pour le formulaire

extension LoginView: AuthenticationProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
    }
}

#Preview {
    LoginView()
}
