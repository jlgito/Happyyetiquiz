//
//  SettingsRowView.swift
//  Duolingo
//
//  Created by Apprenant133 on 15/03/2025.
//

import SwiftUI

struct SettingsRowView: View {
    
    let imageName: String
    let title: String
    let tintColor: Color
    
    var body: some View {
        HStack (spacing: 12)
        {
            Image(systemName: imageName)
//                .resizable()
                .frame(width: 16, height: 16)
//                .aspectRatio(CGFloat(1), contentMode: .fit)
                
//                .scaledToFit()
                .font(.title3)
                .foregroundColor(tintColor)
            
            Text(title)
                .font(.subheadline)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    SettingsRowView(imageName: "flame", title: "Version", tintColor: Color(.systemGray))
}
