//
//  SubscribeView.swift
//  Sehat-in
//
//  Created by Garry on 19/02/22.
//

import SwiftUI

struct SubscribeView: View {
    @AppStorage("subscribe") var subscribe = false
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            ContactView()
                .blur(radius: 3)
            
            Rectangle()
                .ignoresSafeArea()
                .opacity(0.7)
            
            VStack {
                Image(systemName: "lock.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 80))
                
                Text("Oops kamu belum berlangganan :(")
                    .font(Font.custom("poppins-semibold", size: 18))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.top)
                    .padding(.bottom, 2)
                
                Text("Kamu harus berlangganan terlebih dahulu untuk bisa mengakses fitur konusltasi.")
                    .font(Font.custom("poppins-regular", size: 15))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.bottom)
                
                Button("Berlangganan Sekarang!") {
                    showingAlert = true
                }
                .font(Font.custom("poppins-semibold", size: 17))
                .foregroundColor(.white)
                .padding()
                .background(Color("Ijo"))
                .cornerRadius(80)
                .alert(isPresented:$showingAlert) {
                    Alert(
                        title: Text("Lanjut berlangganan?"),
                        message: Text("Kamu bisa membatalkan langganan kapan pun kamu mau."),
                        primaryButton: .default(Text("Ya!")) {
                            withAnimation {
                                subscribe = true
                            }
                        },
                        secondaryButton: .cancel()
                    )
                }
            }
        }
    }
}

struct SubscribeView_Previews: PreviewProvider {
    static var previews: some View {
        SubscribeView()
    }
}
