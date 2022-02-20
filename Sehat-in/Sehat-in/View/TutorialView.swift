//
//  TutorialView.swift
//  Sehat-in
//
//  Created by Garry on 18/02/22.
//

import SwiftUI
import WebKit

struct TutorialView: View {
    var link: LinkResep = linkReseps[2]
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .opacity(0.05)
                .ignoresSafeArea()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
            
            VStack {
                PlayVideo(videoID: link.linkResep)
                    .frame(maxHeight: UIScreen.screenWidth * 9 / 16)
                
                HStack {
                    Text(link.judul)
                        .font(Font.custom("poppins-semibold", size: 16))
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack {
                    Text("by \(link.channel)")
                        .font(Font.custom("poppins-medium", size: 14))
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Rectangle()
                    .padding(.horizontal)
                    .frame(maxHeight: 1)
                    .foregroundColor(.gray)
                    .opacity(0.5)
                
                ScrollView(showsIndicators: false) {
                    Text(link.description)
                        .font(Font.custom("poppins-regular", size: 14))
                        .foregroundColor(.black)
                        .padding(.horizontal)
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
                .padding(10)
                .background(Color("Ijo"))
                .cornerRadius(50)
                
        })
        .gesture(DragGesture().updating($dragOffset, body: { (value, state, transaction) in
                
            if(value.startLocation.x < 20 && value.translation.width > 100) {
                self.mode.wrappedValue.dismiss()
            }
                    
        }))
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
