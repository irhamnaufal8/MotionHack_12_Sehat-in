//
//  ListAudio.swift
//  Sehat-in
//
//  Created by Garry on 18/02/22.
//

import SwiftUI

struct ListAudio: View {
    var linkMusic: LinkMusic = linkMusics[0]
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Image(linkMusic.photo)
                        .resizable()
                }
                .frame(maxWidth: 100, maxHeight: 100)
                .cornerRadius(16)
                
                Text(linkMusic.judul)
                    .font(Font.custom("Poppins-regular", size: 16))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
            }
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 1)
                .foregroundColor(.gray)
                .opacity(0.2)
                .padding(.top, 4)
        }
        .frame(maxWidth: .infinity, maxHeight: 140)
        .padding(.horizontal)
    }
}

struct ListAudio_Previews: PreviewProvider {
    static var previews: some View {
        ListAudio()
            .background(Color("Biru2"))
    }
}
