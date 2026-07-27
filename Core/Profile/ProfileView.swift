//
//  ProfileView.swift
//  Duolingo
//
//  Created by Apprenant133 on 15/03/2025.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State var niveau: Niveau = Niveau(rawValue: UserDefaults.standard.string(forKey: "selectedNiveau") ?? Niveau.sixième.rawValue) ?? .sixième
    @State var golri: Bool = UserDefaults.standard.bool(forKey: "modeGolri")
    
    var body: some View {
        if let user = viewModel.currentUser {
            List {
//MARK: Section Utilisateur
                Section {
                    HStack {
// Photo de profil -> Choix de photo à faire 
                        ZStack {
//                            Text(User.MOCK_USER.initals)
//                                .font(.title)
//                                .fontWeight(.semibold)
//                                .foregroundStyle(.white)
//                                .frame(width: 100, height: 100)
//                                .background(Color(.systemGray3))
//                                .clipShape(Circle())
//                            Image(systemName: "plus.circle.fill")
//                                .foregroundStyle(Color(.systemGray))
//                                .padding(.top, 74)
//                                .padding(.leading, 74)
                            Image("cat")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .offset(y: 15)
                                .background(Color(.blue))
                                .clipShape(Circle())
                         
                            
                        }
// Nom + Mail
                        VStack(alignment: .leading, spacing: 4) {
                            Text(user.fullname)
//                            Text(User.MOCK_USER.fullname)
                                .font(.title)
                                .fontWeight(.semibold)
                                .padding(.top, 4)
                            Text(user.email)
//                            Text(User.MOCK_USER.email)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
//MARK: Section General
                Section(header: Text("General")) {
// Picker niveau scolaire -> pas propre à chaque user
                    HStack {
                        SettingsRowView(imageName: "graduationcap",
                                        title: "Classe",
                                        tintColor: Color(.systemBlue))
                        
                        Spacer()
                        
                        Picker("", selection: $niveau) {
                            Text(Niveau.sixième.rawValue).tag(Niveau.sixième)
                            Text(Niveau.cinquième.rawValue).tag(Niveau.cinquième)
                            Text(Niveau.quatrième.rawValue).tag(Niveau.quatrième)
                            Text(Niveau.troisième.rawValue).tag(Niveau.troisième)
                        }.frame(height: 36)
                            .onChange(of: niveau) { oldValue, newValue in
                                UserDefaults.standard.set(newValue.rawValue, forKey: "selectedNiveau")
                            }
                    }
// Streak -> non fonctionnel
                    HStack {
                        SettingsRowView(imageName: "flame",
                                        title: "Streak",
                                        tintColor: Color(.systemOrange))
                        
                        Spacer()
                        
                        Text("0")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
// Switch mode golri -> pas propre à chaque user
                    HStack {
                        SettingsRowView(imageName: "gear",
                                        title: "Mode golri",
                                        tintColor: Color(.systemGray))
                        
                        Spacer()
                        Toggle(isOn: $golri) { }
                            .onChange(of: golri) { oldValue, newValue in
                                    UserDefaults.standard.set(newValue, forKey: "modeGolri")
                                }

                    }
// Date inscription -> non fonctionnel
                    HStack {
                        SettingsRowView(imageName: "calendar.and.person",
                                        title: "Membre depuis",
                                        tintColor: Color(.systemRed))
                        
                        Spacer()
                        
                        Text("21/03/2025")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
//MARK: Section Social
                Section(header: Text("Social")) {
// Bouton ajout ami -> non fonctionnel
                    Button {
                        print("Ajoute un ami..")
                    } label: {
                        HStack {
                            
                            SettingsRowView(imageName: "person.badge.plus",
                                        title: "Ajouter un ami",
                                        tintColor: Color(.systemGreen))
                            Spacer()

                        }
                    }
// Bouton liste ami -> non fonctionnel
                    Button {
                        print("Ouvre la liste des amis..")
                    } label: {
                        HStack {
                            SettingsRowView(imageName: "person.2",
                                            title: "Ami(s)",
                                            tintColor: Color(.systemBlue))
                            
                            Spacer()
                            
                            Text("0")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
                
//MARK: Section Compte
                Section(header: Text("Compte")) {
// Bouton déconnexion
                    Button {
                        viewModel.signOut()
                    } label: {
                        SettingsRowView(imageName: "arrow.left.circle.fill",
                                        title: "Déconnexion",
                                        tintColor: .red)
                    }
// Bouton suppression compte -> non fonctionnel
//                    Button {
//                        print("Delete account..")
//                    } label: {                                  // Bouton suppression compte -> non fonctionnel
//                        SettingsRowView(imageName: "xmark.circle.fill",
//                                        title: "Suppression du compte",
//                                        tintColor: .red)
//                    }
                }
                Section {

// Bouton suppression compte -> non fonctionnel
                    Button {
                        print("Delete account..")
                    } label: {                                  // Bouton suppression compte -> non fonctionnel
                        SettingsRowView(imageName: "xmark.circle.fill",
                                        title: "Suppression du compte",
                                        tintColor: .red)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(AuthViewModel())
}
