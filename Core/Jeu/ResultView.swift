//
//  ResultView.swift
//  Dynamics
//
//  Created by lambda on 12/03/2025.
//

import SwiftUI

struct ResultView: View {
    // Réception des données passées par la page précédente
    var name: Int = 0
    var scoremauvaisereponse: Int = 0
    var lifepoint: Int
    @Environment(\.presentationMode) var presentationMode // Pour fermer la vue
    
    var body: some View {
        VStack {
            HStack {
                // Bouton croix pour quitter la page
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark") // Icône de croix
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                // Cœur + Nombre de vies
                HStack {
                    Image(systemName: "heart.fill") // Icône de cœur
                        .resizable()
                        .frame(width: 38, height: 36)
                        .foregroundColor(.red)
                        .padding(.trailing, -1)
                    
                    Text("5") // Nombre de vies restantes
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.trailing, -20)
                    
                    

                    
                    
                }
            }
            Text("Voici vos résultats :")
                .font(.title)
                .padding()
            
            Text("Bonne reponse(s) : \(name)")
                .font(.headline)
            
            Text("Mauvaise réponse(s) : \(scoremauvaisereponse)")
                .font(.headline)
        }
        .padding(.horizontal, 20)
        .padding(.top, 10)
        Spacer()
        // Texte au centre
        Text("Bien ouej !")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
     
        Spacer()
        
        // Bouton "Merci"
        Button(action: {
            print("Merci tapé")
        }) {
            Text("Merci")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 228, height: 105)
                .background(Color.blue)
                .cornerRadius(25)
        }
        .padding(.bottom, 30)
    }

}
           
           
           
     
               

