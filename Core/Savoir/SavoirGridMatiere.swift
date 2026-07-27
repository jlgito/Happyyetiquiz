import SwiftUI




struct SavoirGridMatiere: View {

    @State private var pressedButton: Int? = nil
    @State private var counter: Int = 0

//Nombre de colonnes de la LazyVGrid
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    let support: String

    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(matieres) { index in
                        if support == "Vidéo" {
                            NavigationLink(destination: SavoirGridTheme(matiere: index, support: "Vidéo")) {
                                MouleBoutone(boutonData: index)
                            }
                            .buttonStyle(boutonstylé())
                            .navigationTitle(support)
                        } else {
                            NavigationLink(destination: SavoirGridTheme(matiere: index, support: "Text")) {
                                MouleBoutone(boutonData: index)
                            }
                            .buttonStyle(boutonstylé())
                            .navigationTitle(support)
                        }
                    }
                }
                .padding(20)
//                .padding(.top, 200)
    //          .toolbar(.hidden, for: .tabBar)
            }
        }
    }
}

#Preview {
    SavoirGridMatiere(support: "Vidéo")
}
