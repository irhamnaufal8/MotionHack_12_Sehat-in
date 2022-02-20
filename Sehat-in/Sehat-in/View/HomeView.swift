//
//  HomeView.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI

struct HomeView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().backgroundColor = UIColor(Color("Ijo"))
    }
    
    var body: some View {
        NavigationView {
            TabView {
                EatPageView()
                    .tabItem {
                        Image(systemName: "fork.knife")
                    }
                
                SleepHelperView()
                    .tabItem {
                        Image(systemName: "moon.stars.fill")
                    }
                
                PreContactView()
                    .tabItem {
                        Image(systemName: "message.fill")
                    }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .accentColor(.white)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
