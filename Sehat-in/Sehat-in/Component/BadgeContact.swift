//
//  BadgeContact.swift
//  Sehat-in
//
//  Created by Garry on 19/02/22.
//

import SwiftUI

struct BadgeContact: View {
    
    var detailContact: DetailContact = detailContacts[0]
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Image(detailContact.foto)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(maxWidth: 70, maxHeight: 70)
                .cornerRadius(70)
                
                VStack {
                    HStack {
                        Text(detailContact.nama)
                            .font(Font.custom("Poppins-semibold", size: 16))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text(detailContact.jabatan)
                            .font(Font.custom("Poppins-regular", size: 14))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                        
                        Spacer()
                    }
                }
                
                Spacer()
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 100)
        .background(.white)
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray, lineWidth: 1)
                .opacity(0.2)
        )
    }
}

struct BadgeContact_Previews: PreviewProvider {
    static var previews: some View {
        BadgeContact()
    }
}
