//
//  ChatView.swift
//  Sehat-in
//
//  Created by Garry on 18/02/22.
//

import SwiftUI

struct ChatView: View {
    @StateObject var messagesManager = MessagesManager()
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    
    var body: some View {
        VStack {
            VStack {                
                ScrollViewReader { proxy in
                    ScrollView {
                        ForEach(messagesManager.messages, id: \.id) {message in
                            MessageBubble(message: message)
                        }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of: messagesManager.lastMessageId) { id in
                        withAnimation {
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    }
                }
            }
            .background(Color("Ijo"))
            
            MessageField()
                .environmentObject(messagesManager)
                .accentColor(Color("Ijo"))
        }
        .onTapGesture(perform: {
            hideKeyboard()
        })
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                TitleRow()
                    .padding()
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

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
