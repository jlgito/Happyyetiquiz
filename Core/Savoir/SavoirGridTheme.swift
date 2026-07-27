import SwiftUI



struct boutonstylé: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}


struct SavoirGridTheme: View {

    @State private var pressedButton: Int? = nil
    @State private var counter: Int = 0

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),        
    ]
    
    let matiere: Matiere
    let support: String

    var body: some View {
        
//Scroll
            ScrollView (showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(matiere.theme) { index in
                        if support == "Vidéo" {
                            NavigationLink(destination: VideoView()) {
                                MouleBoutwo(boutonData: index, matiereColor: matiere.couleur, matiereShadow: matiere.couleurombre)
                            }
                            .buttonStyle(boutonstylé())
                            .navigationTitle(matiere.nom)
                        } else {
                            NavigationLink(destination: TextView()) {
                                MouleBoutwo(boutonData: index, matiereColor: matiere.couleur, matiereShadow: matiere.couleurombre)
                            }
                            .buttonStyle(boutonstylé())
                            .navigationTitle(matiere.nom)
                        }
                }
            }
        }
        .padding(20)
//        .padding(.top, 200)
//        .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    SavoirGridTheme(matiere: matieres[3], support: "Vidéo")
}
