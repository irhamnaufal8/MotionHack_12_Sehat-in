//
//  ContactView.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI

struct ContactView: View {
    
    var detail: DetailContact = detailContacts[0]
    
    var body: some View {
        ZStack {
            
            VStack {
                VStack {
                    HStack {
                        Text("Konsultasi")
                            .font(Font.custom("poppins-Bold", size: 24))
                            .foregroundColor(Color("Ijo"))
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Konsultasi tentang kesehatan & gizi langsung bersama ahlinya.")
                            .font(Font.custom("poppins-regular", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.horizontal)
                }
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        NavigationLink(destination: ChatView()) {
                            BadgeContact(detailContact: detail)
                                .padding()
                        }
                        
                        Spacer()
                    }
                }
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
