//
//  Slide1.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI

struct Slide1: View {
    let size = UIScreen.main.bounds.width / 1.5
    var body: some View {
        VStack {
            Image("eat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .frame(maxWidth: size)
                
            
            Text("Gak usah takut kekurangan kalori harianmu!")
                .font(Font.custom("Poppins-Medium", size: 16))
                .foregroundColor(.white)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Ijo"))
    }
}

struct Slide1_Previews: PreviewProvider {
    static var previews: some View {
        Slide1()
    }
}
