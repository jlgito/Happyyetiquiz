//
//  SavoirView.swift
//  Duolingo
//
//  Created by Apprenant133 on 17/03/2025.
//

import SwiftUI

struct SavoirView: View {
@State private var isPressed = false
@State private var isPressed2 = false
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    NavigationLink(destination: SavoirGridMatiere(support: "Vidéo")) {
                        //Bouton
                                ZStack {
                        //Ombre
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.yellow)
                                        .frame(width: 330, height: 200)
                                        .offset(y: 6)
                        //Bouton avec text
                                    Text("Vidéo")
                                        .font(.title.bold())
                                        .frame(minWidth: 330, minHeight: 200, alignment: .bottom)
                                        .background(Color.yellow)
                                        .foregroundColor(.black)
                                        .cornerRadius(20)
                                        .offset(y: isPressed ? 6 : 0)
                                        .animation(.spring(response: 0.1, dampingFraction: 0.5), value: isPressed)
                        //Icon bouton
                                    Image("videoo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150)
                                        .offset(y: isPressed ? 6 : 0)
                                        .animation(.spring(response: 0.1, dampingFraction: 0.5), value: isPressed)
                                        .padding(.top, -40)
                                        .opacity(0.9)
                                }
                    }.buttonStyle(boutonstylé())
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
                    
                    NavigationLink(destination: SavoirGridMatiere(support: "Texte")) {
                        //Bouton
                                ZStack {
                        //Ombre
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.green)
                                        .frame(width: 330, height: 200)
                                        .offset(y: 6)
                        //Bouton avec text
                                    Text("Texte")
                                        .font(.title.bold())
                                        .frame(minWidth: 330, minHeight: 200, alignment: .bottom)
                                        .background(Color.green)
                                        .foregroundColor(.black)
                                        .cornerRadius(20)
                                        .offset(y: isPressed2 ? 6 : 0)
                                        .animation(.spring(response: 0.1, dampingFraction: 0.5), value: isPressed2)
                        //Icon bouton
                                    Image("textbook")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 160)
                                        .offset(y: isPressed2 ? 6 : 0)
                                        .animation(.spring(response: 0.1, dampingFraction: 0.5), value: isPressed2)
                                        .padding(.top, -40)
                                        .opacity(0.9)
                                }
                    }.buttonStyle(boutonstylé())
                        .simultaneousGesture(
                            DragGesture(minimumDistance: 0)
                                .onChanged { _ in
                                    isPressed2 = true
                                }
                                .onEnded { _ in
                                    isPressed2 = false
                                }
                        )
                        .sensoryFeedback(.impact, trigger: isPressed2)
                }
            }.navigationTitle("Type de support")
                .padding(.top, 100)
        }.onAppear {
            UNUserNotificationCenter.current().setBadgeCount(0) //Remise à zero des badges rouge
        }
    }
}


#Preview {
    SavoirView()
}
