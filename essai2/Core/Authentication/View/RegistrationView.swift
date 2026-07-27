//
//  RegistrationView.swift
//  Duolingo
//
//  Created by Apprenant133 on 15/03/2025.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var fullname: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var isPressed = false
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
//Logo
            Image("yetich")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .padding(.vertical, 32)
            
//Formulaire Incription
            VStack(spacing: 24) {
//Adresse email
                InputView(text: $email,
                          title: "Adresse e-mail",
                          placeholder: "tonadresse@icloud.com")
                .autocapitalization(.none)
                
//Pseudo
                InputView(text: $fullname,
                          title: "Pseudo",
                          placeholder: "Comment veux-tu t'appeler ?")
                
//Mot de passe
                ZStack (alignment: .trailing) {
                    InputView(text: $password,
                              title: "Mot de passe",
                              placeholder: "Crée ton mot de passe (au moins 6 caractères)",
                              isSecureField: true)
                    if !password.isEmpty {
//Mot de passe valide
                        if password.count > 5 {
                            Image(systemName: "checkmark.circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.systemGreen))
                        }
//Mot de passe trop court
                        else {
                            Image(systemName: "xmark.circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.systemRed))
                        }
                    }
                    
                }

//Confirmation de mot de passe
                ZStack (alignment: .trailing) {
                    InputView(text: $confirmPassword,
                              title: "Confirmation mot de passe",
                              placeholder: "Si tu l'as déjà oublié c'est grave !",
                              isSecureField: true)
//Indicateur confirmation
                    if !password.isEmpty && !confirmPassword.isEmpty {
//Mot de passe identique
                        if password == confirmPassword {
                            Image(systemName: "checkmark.circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.systemGreen))
                        }
//Mot de passe différent
                        else {
                            Image(systemName: "xmark.circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.systemRed))
                        }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
//Bouton Inscription
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
                        try await viewModel.createUser(withEmail: email, password: password, fullname: fullname)
                    }
                } label: {
                    HStack {
                        Text("INSCRIPTION")
                            .fontWeight(.semibold)
//                        Image(systemName: "arrow.right")
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
            
//Bouton retour page connexion
            Button {
                dismiss()
            } label: {
                HStack (spacing: 3) {
                    Text("Tu as déjà un compte en fait?")
                    Text("Reviens par içi")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }
        }
    }
}

// MARK: - AuthenticationFormProtocol
//Conditions requises pour le formulaire

extension RegistrationView: AuthenticationProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        && confirmPassword == password
        && !fullname.isEmpty
    }
}

#Preview {
    RegistrationView()
}
