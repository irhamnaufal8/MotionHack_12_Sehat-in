//
//  BadgeTutorial.swift
//  Sehat-in
//
//  Created by Garry on 18/02/22.
//

import SwiftUI

struct BadgeTutorial: View {
    var link: LinkResep = linkReseps[0]
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Image(link.photo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: 80, height: 80)
                .cornerRadius(16)
                
                VStack {
                    HStack {
                        Text(link.judul)
                            .font(Font.custom("Poppins-semibold", size: 16))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("by \(link.channel)")
                            .font(Font.custom("Poppins-regular", size: 14))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                        
                        Spacer()
                    }
                }
                
                Image(systemName: "chevron.right")
                    .foregroundColor(Color("Ijo"))
                    .font(.system(size: 20, weight: .semibold))
                
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 100)
        .padding()
    }
}

struct BadgeTutorial_Previews: PreviewProvider {
    static var previews: some View {
        BadgeTutorial()
    }
}
