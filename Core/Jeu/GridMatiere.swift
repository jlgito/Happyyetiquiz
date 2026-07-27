import SwiftUI

struct GridMatiere: View {

    @State private var pressedButton: Int? = nil
    @State private var counter: Int = 0

//Nombre de colonnes de la LazyVGrid
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(matieres) { index in
                        NavigationLink(destination: GridTheme(matiere: index)) {
                            MouleBoutone(boutonData: index)
                        }
                        .buttonStyle(boutonstylé())
                        .navigationTitle("Matières")
                    }
                }
                .padding(20)
//                .padding(.top, 200)
    //          .toolbar(.hidden, for: .tabBar)
            }
        }
    }
}

//Version avec composant Buton (désactivé mais on garde on sait jamais)
//                    ForEach(matieres) { index in
//
//
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
//
//                    }

#Preview {
        GridMatiere()
}

//Extraction de vue bouton de type Matière
struct MouleBoutone: View {
    
    let boutonData: Matiere
    @State private var isPressed = false
    
    var body: some View {
//Bouton
        ZStack {
//Ombre
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(boutonData.couleurombre))
                .frame(width: 165, height: 165)
                .offset(y: 6)
//Bouton avec text
            Text(boutonData.abrev)
                .font(.title.bold())
                .frame(minWidth: 165, minHeight: 165, alignment: .bottom)
                .background(Color(boutonData.couleur))
                .foregroundColor(.black)
                .cornerRadius(20)
                .offset(y: isPressed ? 6 : 0)
                .animation(.spring(response: 0.1, dampingFraction: 0.5), value: isPressed)
//Icon bouton
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
