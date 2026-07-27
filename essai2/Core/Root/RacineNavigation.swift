//
//  RacineNavigation.swift
//  Duolingo
//
//  Created by Apprenant133 on 07/03/2025.
//

import SwiftUI

struct RacineNavigation: View {
    var body: some View {
        TabView {
            Tab("Savoir", systemImage: "books.vertical.fill") {
                SavoirView()
            }
//            .badge(2)


            Tab("Jeu", systemImage: "gamecontroller.fill") {
                GridMatiere()
            }


            Tab("Palmarès", systemImage: "trophy.fill") {
                PalmaView()
            }
//            .badge("!")
            
            Tab("Profil", systemImage: "person.fill") {
                ProfileView()
            }
            
        }
        .navigationBarBackButtonHidden()
        
    }
}

#Preview {
    RacineNavigation()
}
