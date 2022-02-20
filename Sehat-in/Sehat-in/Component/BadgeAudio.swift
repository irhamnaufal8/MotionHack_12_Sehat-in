//
//  BadgeAudio.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI
import WebKit

struct BadgeAudio: View {
    var linkMusic: LinkMusic = linkMusics[0]
    
    var body: some View {
        ZStack {
            Image(linkMusic.photo)
                .resizable()
            
            LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: Color(red: 0, green: 0, blue: 0, opacity: 0), location: 0),
                        .init(color: Color(red: 0.1, green: 0.1, blue: 0.1), location: 1)]),
                    startPoint: UnitPoint(x: 0, y: 3.083428383490377423e-7),
                    endPoint: UnitPoint(x: -0.0016290833199537713, y: 1))
            
            VStack {
                Spacer()
                Text(linkMusic.judul)
                    .font(Font.custom("Poppins-Medium", size: 16))
                    .foregroundColor(.white)
                    .padding()
            }
        }
        .frame(maxWidth: 340, maxHeight: 240)
        .cornerRadius(20)
        .shadow(color: .black, radius: 8, x: 0, y: 3)
    }
}

struct BadgeAudio_Previews: PreviewProvider {
    static var previews: some View {
        BadgeAudio()
    }
}
