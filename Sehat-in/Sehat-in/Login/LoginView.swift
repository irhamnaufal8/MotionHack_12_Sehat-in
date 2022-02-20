//
//  LoginView.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        TabView {
            Slide1()
            Slide2()
            Slide3()
        }
        .background(Color("Ijo"))
        .ignoresSafeArea()
        .tabViewStyle(.page)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
