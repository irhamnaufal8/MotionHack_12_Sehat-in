//
//  TitleRow.swift
//  Sehat-in
//
//  Created by Garry on 18/02/22.
//

import SwiftUI

struct TitleRow: View {    
    var detailContact: DetailContact = detailContacts[0]
    
    var body: some View {
        HStack(spacing: 20) {
            
            Image(detailContact.foto).resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 40, maxHeight: 40)
                .cornerRadius(50)
            
            VStack(alignment: .leading) {
                Text(detailContact.nama)
                    .font(Font.custom("poppins-Bold", size: 16))
                    .foregroundColor(.white)
                
                Text(detailContact.jabatan)
                    .font(Font.custom("poppins-medium", size: 12))
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            Button(action: {
                let link = "tel://"
                let phoneNumberformatted = link + detailContact.phone
                guard let url = URL(string: phoneNumberformatted) else { return }
                UIApplication.shared.open(url)
            }) {
                Image(systemName: "phone.fill")
                    .foregroundColor(.white)
                    .frame(width: 30, height: 30)
            }
        }
        .padding(.vertical)
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Ijo"))
    }
}
