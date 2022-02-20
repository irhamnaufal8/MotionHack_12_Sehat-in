//
//  Slide2.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI

struct Slide2: View {
    let size = UIScreen.main.bounds.width / 1.5
    var body: some View {
        VStack {
            Image("sleep")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .frame(maxWidth: size)
                
            
            Text("Tidur nyenyak, bebas insomnia!")
                .font(Font.custom("Poppins-Medium", size: 16))
                .foregroundColor(.white)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Ijo"))
    }
}

struct Slide2_Previews: PreviewProvider {
    static var previews: some View {
        Slide2()
    }
}
