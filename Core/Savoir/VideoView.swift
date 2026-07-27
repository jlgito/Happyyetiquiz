//
//  VideoView.swift
//  Duolingo
//
//  Created by Apprenant133 on 18/03/2025.
//

import SwiftUI

struct VideoView: View {
    var body: some View {
        ScrollView {
            VStack (spacing: 20){
                ZStack {
                    RoundedRectangle(cornerRadius: 22)
                        .fill(Color.black.opacity(0.6))
                        .frame(width: 366, height: 208)
                    Image("vidun")
                        .resizable()
                        .frame(width: 360, height: 202)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Image(systemName: "play.fill")
                        .foregroundStyle(.white)
                        .opacity(0.6)
                        .font(.system(size: 60, weight: .bold))
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 22)
                        .fill(Color.black.opacity(0.6))
                        .frame(width: 366, height: 208)
                    Image("videux")
                        .resizable()
                        .frame(width: 360, height: 202)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Image(systemName: "play.fill")
                        .foregroundStyle(.black)
                        .opacity(0.6)
                        .font(.system(size: 60, weight: .bold))
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 22)
                        .fill(Color.black.opacity(0.6))
                        .frame(width: 366, height: 208)
                    Image("vidtrois")
                        .resizable()
                        .frame(width: 360, height: 202)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Image(systemName: "play.fill")
                        .foregroundStyle(.black)
                        .opacity(0.6)
                        .font(.system(size: 60, weight: .bold))
                }
            }
        }.navigationTitle("8 Mars")
    }
}

#Preview {
    VideoView()
}
