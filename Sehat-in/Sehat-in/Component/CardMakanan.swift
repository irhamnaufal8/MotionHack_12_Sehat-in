//
//  CardMakanan.swift
//  Sehat-in
//
//  Created by Garry on 18/02/22.
//

import SwiftUI

struct CardMakanan: View {
    var kalori: Kalori = kalories[10]
    
    var body: some View {
            VStack {
                Image(kalori.photo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 110)
                    .cornerRadius(14)
                
                Text(kalori.nama)
                    .font(Font.custom("poppins-medium", size: 15))
                    .lineLimit(2)
                    .foregroundColor(.black)
                
                Text("\(kalori.jumlahKalori) kkal")
                    .font(Font.custom("poppins-medium", size: 15))
                    .lineLimit(2)
                    .foregroundColor(.gray)
                    .opacity(0.8)
            }
            .padding()
            .frame(maxWidth: 160, maxHeight: 200)
            .background(.white)
            .cornerRadius(16)
            .shadow(color: Color("Abu"), radius: 2, x: 0, y: 2)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color("Abu"), lineWidth: 1)
            )
            
    }
}

struct CardMakanan_Previews: PreviewProvider {
    static var previews: some View {
        CardMakanan()
    }
}
