//
//  TextView.swift
//  Duolingo
//
//  Created by Apprenant133 on 18/03/2025.
//

import SwiftUI

struct TextView: View {
    
    var femenine: String = """
Durant l'Antiquité, plusieurs femmes sont philosophes ou scientifiques mais la perte des documents antiques fait que le plus souvent seul leur nom est connu .

Aganice, également connue sous le nom d'Athyrta (1900 av. J.-C.), était une princesse égyptienne du Moyen Empire connue pour ses travaux sur l'astronomie et la philosophie naturelle.

Tapputi-Belet-ekalle (1200 av. J.-C.), parfumeuse mésopotamienne, est référencée dans le texte d'une tablette cunéiforme. Elle est souvent considérée comme la première chimiste connue.

Marie la Juive (ier siècle), une des premières alchimistes du monde et reconnue comme telle, inventrice du bain marie qui lui doit son nom.

Aglaonice de Thessalie (iie siècle), astronome grecque, souvent considérée comme la première femme astronome.

Cléopâtre (iiie siècle), alchimiste égyptienne reconnue pour avoir inventé l'alambic.

Pandrosion (ive siècle), mathématicienne grecque, développe une approximation numérique des racines cubiques.

Hypatie (ive siècle), philosophe, astronome et mathématicienne, à la tête de l’école néoplatonicienne d’Alexandrie est la première dont la vie et les travaux sont parvenus jusqu'à nous.
"""
    
    var body: some View {
        VStack {
            Text("FEMMES MARQUANTES")
                .font(.headline)
                .fontWeight(.black)
        }
        
        
        
        ScrollView (showsIndicators: false) {
            VStack {
                Text(femenine)
                    .font(.custom("Teacher", size: 25, relativeTo: .largeTitle))
                    .fontWeight(.thin)
            }
        }.padding()
    }
}

#Preview {
    TextView()
}
