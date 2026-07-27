import SwiftUI




struct GridTheme: View {

    @State private var pressedButton: Int? = nil
    @State private var counter: Int = 0

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        
    ]
    
    let matiere: Matiere

    var body: some View {
        
//Je sais pas si ça sert mais on garde au cas où
//        ZStack {
//            
//            Image("\(matiere.image)")
//                .resizable()
//                .frame(width: 60, height: 60)
//            Text("\(matiere.nom)")
//                .font(.largeTitle)
//                .bold(true)
//                .offset(x: 0, y: 50)
//        }
        
//Scroll
            ScrollView (showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(matiere.theme) { index in
                        NavigationLink(destination: Questions(theme: index)) {
                            MouleBoutwo(boutonData: index, matiereColor: matiere.couleur, matiereShadow: matiere.couleurombre)
                        }
                        .buttonStyle(boutonstylé())
                        .navigationTitle(matiere.nom)
                }
//Version avec composant Buton (désactivé)
//                        Button {
//                            print("Button \(index)")
//                            counter += 1
//                        } label: {
//                            ZStack {
//                                RoundedRectangle(cornerRadius: 20)
//                                    .fill(Color.gray)
//                                    .frame(width: 165, height: 160)
//                                    .offset(y: 8)
//                                
//                                Text("Button \(index)")
//                                    .font(.largeTitle.bold())
//                                    .frame(minWidth: 165, minHeight: 165, alignment: .bottom)
//                                    .background(Color.gris)
//                                    .foregroundColor(.white)
//                                    .cornerRadius(20)
//                                    .offset(y: pressedButton == index ? 6 : 0)
//                                    .animation(.spring(response: 0.1, dampingFraction: 0.5), value: pressedButton)
//                                
//                                Image(systemName: "photo")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 100)
//                                    .offset(y: pressedButton == index ? 6 : 0)
//                                    .animation(.spring(response: 0.1, dampingFraction: 0.5), value: pressedButton)
//                                    .padding(.top, -40)
//                            }
//                        }
//                        
//                        .buttonStyle(boutonstylé())
//                        .simultaneousGesture(
//                            DragGesture(minimumDistance: 0)
//                                .onChanged { _ in
//                                    pressedButton = index
//                                }
//                                .onEnded { _ in
//                                    pressedButton = nil
//                                }
//                        )
//                        .sensoryFeedback(.impact, trigger: pressedButton)
            }
        }
        .padding(20)
//        .padding(.top, 200)
//        .toolbar(.hidden, for: .tabBar)
    }
}
        
    


#Preview {
    GridTheme(matiere: matieres[3])
}

//Extraction de vue bouton de type Theme
struct MouleBoutwo: View {
    
    let boutonData: Theme
    let matiereColor: String
    let matiereShadow: String
    
    @State private var isPressed = false
    
    var body: some View {
//Bouton
        ZStack {
//Ombre
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(matiereShadow))
                .frame(width: 165, height: 160)
                .offset(y: 8)
//Bouton avec text
            Text(boutonData.nom)
                .font(.title3.bold())
                .frame(minWidth: 165, minHeight: 165, alignment: .bottom)
                .background(Color(matiereColor))
                .foregroundColor(.black)
                .cornerRadius(20)
                .offset(y: isPressed ? 6 : 0)
                .animation(.spring(response: 0.1, dampingFraction: 0.5), value: isPressed)
                .multilineTextAlignment(.center)
//Icon Thème
            Image(boutonData.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .offset(y: isPressed ? 6 : 0)
                .animation(.spring(response: 0.1, dampingFraction: 0.5), value: isPressed)
                .padding(.top, -40)
                .opacity(0.9)
        }
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
}
