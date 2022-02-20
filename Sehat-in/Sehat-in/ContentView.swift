//
//  ContentView.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct ContentView: View {
    
    @AppStorage("log_Status") var log_Status = false
    
    var body: some View {
        VStack {
            if log_Status {
                
                HomeView()
        
                
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

