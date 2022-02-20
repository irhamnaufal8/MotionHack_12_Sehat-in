//
//  MessageBubble.swift
//  Sehat-in
//
//  Created by Garry on 18/02/22.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false
    
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Abu") : Color("Ijo"))
                    .foregroundColor(message.received ? .black : .white)
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing)
            }
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "12345", text: "Coba bikin aplikasi chat uy", received: false, timestamp: Date()))
    }
}
