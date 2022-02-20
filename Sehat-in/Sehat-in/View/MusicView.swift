//
//  MusicView.swift
//  Sehat-in
//
//  Created by Garry on 18/02/22.
//

import SwiftUI
import WebKit

struct MusicView: View {
    var link: LinkMusic = linkMusics[0]
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("Biru2"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            VStack {
                PlayVideo(videoID: link.linkMusik)
                    .frame(maxHeight: UIScreen.screenWidth * 9 / 16)
                
                HStack {
                    Text(link.judul)
                        .font(Font.custom("poppins-semibold", size: 20))
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Rectangle()
                    .padding(.horizontal)
                    .frame(maxHeight: 1)
                    .foregroundColor(.gray)
                    .opacity(0.5)
                
                ScrollView(showsIndicators: false) {
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
                }
                
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image(systemName: "arrow.left")
                .foregroundColor(.white)
                .font(.headline)
                
        })
        .gesture(DragGesture().updating($dragOffset, body: { (value, state, transaction) in
                
            if(value.startLocation.x < 20 && value.translation.width > 100) {
                self.mode.wrappedValue.dismiss()
            }
                    
        }))
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
