//
//  DetailMakananView.swift
//  Sehat-in
//
//  Created by Garry on 19/02/22.
//

import SwiftUI

struct DetailMakananView: View {
    var kalori: Kalori = kalories[0]
    
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("Ijo"))
                        .frame(maxWidth: 40, maxHeight: 5)
                }
                
                ScrollView(showsIndicators: false) {
                    Text("Detail Makanan")
                        .font(Font.custom("poppins-semibold", size: 18))
                        .foregroundColor(.black)
                        .padding(.bottom, -6)
                    
                    Image(kalori.photo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.screenWidth - 64, height: UIScreen.screenWidth * 3 / 5)
                        .cornerRadius(20)
                        .padding()
                    
                    Rectangle()
                        .foregroundColor(Color("Abu"))
                        .frame(maxWidth: .infinity, maxHeight: 2)
                        .padding(.horizontal)
                    
                    HStack {
                        Text("Nama Makanan")
                            .font(Font.custom("poppins-medium", size: 15))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(kalori.nama)
                            .font(Font.custom("poppins-semibold", size: 15))
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 4)
                    
                    HStack {
                        Text("Kategori")
                            .font(Font.custom("poppins-medium", size: 15))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(kalori.kategori)
                            .font(Font.custom("poppins-semibold", size: 15))
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 4)
                    
                    HStack {
                        Text("Berat")
                            .font(Font.custom("poppins-medium", size: 15))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("\(kalori.berat) gram")
                            .font(Font.custom("poppins-semibold", size: 15))
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 4)
                    
                    HStack {
                        Text("Jumlah Kalori")
                            .font(Font.custom("poppins-medium", size: 15))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("\(kalori.jumlahKalori) kilokalori")
                            .font(Font.custom("poppins-semibold", size: 15))
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal)

                }
            }
        }
    }
}

struct DetailMakananView_Previews: PreviewProvider {
    static var previews: some View {
        DetailMakananView()
    }
}
