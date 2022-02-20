//
//  SleepHelperView.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI
import WebKit

struct SleepHelperView: View {
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Pengantar Tidur")
                        .font(Font.custom("poppins-Bold", size: 24))
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Dengarkan suara-suara yang membuatmu tenang. Bye-bye insomnia!")
                        .font(Font.custom("poppins-regular", size: 16))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal)
                
                ScrollView {
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(linkMusics) { item in
                                    NavigationLink(destination: MusicView(link: item)) {
                                        BadgeAudio(linkMusic: item)
                                    }
                                }
                            }
                            .padding()
                        }
                        
                        HStack {
                            Text("Eksplor lebih lengkap")
                                .font(Font.custom("poppins-semibold", size: 18))
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        ForEach(linkMusics) { item in
                            NavigationLink(destination: MusicView(link: item)) {
                                ListAudio(linkMusic: item)
                            
                            }
                        }
                        ForEach(linkMusics) { item in
                            NavigationLink(destination: MusicView(link: item)) {
                                ListAudio(linkMusic: item)
                            
                            }
                        }
                        Spacer()
                    }
                }
                .navigationTitle("")
                .navigationBarHidden(true)
            }
        }
        .background(Color("Biru2"))
        .accentColor(Color("Ijo"))
    }
}

struct SleepHelperView_Previews: PreviewProvider {
    static var previews: some View {
        SleepHelperView()
    }
}
