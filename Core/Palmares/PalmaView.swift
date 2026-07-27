////
////  PalmaView.swift
////  Duolingo
////
////  Created by Apprenant133 on 17/03/2025.
////
//
//import SwiftUI
//
//struct PalmaView: View {
//    var body: some View {
//NavigationStack {
////    ScrollView(Axis.Set.vertical) {
//    ScrollView {
//        VStack (spacing: 40){
//            Spacer()
//            ForEach(matieres) { index in
//                ZStack {
//                    Text("Maths")
//                        .font(.largeTitle)
//                        .frame(width: 150, height: 200, alignment: .top)
//                        .background(Color.rouge)
//                        .clipShape(RoundedRectangle(cornerRadius: 20))
//                    ScrollView(.horizontal, showsIndicators: false) {
//                        LazyHStack {
//                            ForEach(0..<6) { index2 in                      // for each lvl
//                                Image(systemName: "trophy.fill")
//                                    .resizable()
//                                    .frame(width: 100, height: 100)
//                                }
//                            }
//                        }
//                        .offset(y: 10)
//                        .scrollTargetBehavior(.paging)
//                    }
//                }
//            }
//            }.navigationTitle("Hall of Fame")
//        }
//    }
//}
//
//#Preview {
//    PalmaView()
//}


import SwiftUI

struct PalmaView: View {
    let level1: [String] = ["MedailleBRONZE", "MedailleSILVER","Medailleor" , "MedaillePLATINE"]
    let level2: [String] = ["MedailleBRONZE", "MedailleSILVER","Medailleor" , "MedaillePLATINE"]
    let level3: [String] = ["MedailleBRONZE", "MedailleSILVER","Medailleor" , "MedaillePLATINE"]
    let level4: [String] = ["MedailleBRONZE", "MedailleSILVER","Medailleor" , "MedaillePLATINE"]
    
    let textLevel1: [String] = ["DEBUTANT", "INTERMEDIAIRE", "PROFESIONELLE", "MAITRE"]
    let textLevel2: [String] = ["DEBUTANT", "INTERMEDIAIRE", "PROFESIONELLE", "MAITRE"]
    let textLevel3: [String] = ["DEBUTANT", "INTERMEDIAIRE", "PROFESIONELLE", "MAITRE"]
    let textLevel4: [String] = ["DEBUTANT", "INTERMEDIAIRE", "PROFESIONELLE", "MAITRE"]
    let indicesAvecFlou = [0, 1,2,3]
    @State private var index : Int = 0
    var body: some View {
        ScrollView() {
            VStack(spacing: 30) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    Text("MATH")
                    ZStack {
                        HStack(spacing: 10) {
                            ForEach(0..<level1.count, id: \.self) { index in
                                VStack(alignment: .leading) {
                                    ZStack {
                                        Rectangle()
                                            .fill(Color.red)
                                            .frame(width: 90, height: 130)
                                            .cornerRadius(20)
                                        
                                        // Image centrée dans le rectangle
                                        Image(level1[index])
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70, height: 50)
                                            .padding()
                                            .background(Circle().fill(Color.gray))  // Fond circulaire
                                            .foregroundColor(.blue)
                                            .shadow(radius: 5)
                                            .blur(radius: index == 0 ? 0 : 5)
                                        
                                        VStack {
                                            Spacer()  // Espacement flexible
                                            Text(textLevel1[index])  // Texte personnalisé
                                                .foregroundColor(.white)
                                                .font(.caption)
                                                .padding(.bottom, 5)
                                                .blur(radius: index == 0 ? 0 : 5)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                ScrollView(.horizontal, showsIndicators: false) {
                    Text("FRANCAIS")
                    ZStack {
                        HStack(spacing: 10) {
                            ForEach(0..<level2.count, id: \.self) { index in
                                VStack(alignment: .leading) {
                                    ZStack {
                                        Rectangle()
                                            .fill(Color.green)
                                            .frame(width: 90, height: 130)
                                            .cornerRadius(20)
                                           
                                        
                                        // Image centrée dans le rectangle
                                        Image(level2[index])
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70, height: 50)
                                            .padding()
                                            .background(Circle().fill(Color.gray))
                                            .foregroundColor(.blue)
                                            .shadow(radius: 5)
                                            .blur(radius: indicesAvecFlou.contains(index) ? 5 : 0)
                                        
                                        VStack {
                                            Spacer()
                                            Text(textLevel2[index])  // Texte personnalisé
                                                .foregroundColor(.white)
                                                .font(.caption)
                                                .padding(.bottom, 5)
                                                .blur(radius: indicesAvecFlou.contains(index) ? 5 : 0)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                ScrollView(.horizontal, showsIndicators: false) {
                    Text("SVT")
                    ZStack {
                        HStack(spacing: 10) {
                            ForEach(0..<level3.count, id: \.self) { index in
                                VStack(alignment: .leading) {
                                    ZStack {
                                        Rectangle()
                                            .fill(Color.pink)
                                            .frame(width: 90, height: 130)
                                            .cornerRadius(20)
                                            .blur(radius: indicesAvecFlou.contains(index) ? 5 : 0)
                                        
                                        // Image centrée dans le rectangle
                                        Image(level3[index])
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70, height: 50)
                                            .padding()
                                            .background(Circle().fill(Color.gray))
                                            .foregroundColor(.blue)
                                            .shadow(radius: 5)
                                            .blur(radius: indicesAvecFlou.contains(index) ? 5 : 0)
                                        
                                        VStack {
                                            Spacer()
                                            Text(textLevel3[index])  // Texte personnalisé
                                                .foregroundColor(.white)
                                                .font(.caption)
                                                .padding(.bottom, 5)
                                                .blur(radius: indicesAvecFlou.contains(index) ? 5 : 0)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                ScrollView(.horizontal, showsIndicators: false) {
                    Text("ART PLASTIQUE")
                    ZStack {
                        HStack(spacing: 10) {
                            ForEach(0..<level4.count, id: \.self) { index in
                                VStack(alignment: .leading) {
                                    ZStack {
                                        Rectangle()
                                            .fill(Color.yellow)
                                            .frame(width: 90, height: 130)
                                            .cornerRadius(20)
                                            .blur(radius: indicesAvecFlou.contains(index) ? 5 : 0)
                                        
                                        // Image centrée dans le rectangle
                                        Image(level4[index])
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70, height: 50)
                                            .padding()
                                            .background(Circle().fill(Color.gray))
                                            .foregroundColor(.blue)
                                            .shadow(radius: 5)
                                            .blur(radius: indicesAvecFlou.contains(index) ? 5 : 0)
                                        
                                        VStack {
                                            Spacer()
                                            Text(textLevel4[index])  // Texte personnalisé
                                                .foregroundColor(.white)
                                                .font(.caption)
                                                .padding(.bottom, 5)
                                                .blur(radius: indicesAvecFlou.contains(index) ? 5 : 0)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PalmaView()
}
