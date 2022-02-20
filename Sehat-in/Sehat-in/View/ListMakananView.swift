//
//  ListMakananView.swift
//  Sehat-in
//
//  Created by Garry on 19/02/22.
//

import SwiftUI

struct ListMakananView: View {
    @State var show = false
    @State var selectedItem: Kalori = kalories[0]
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 0)], spacing: 16) {
                        ForEach(kalories) { item in
                            CardMakanan(kalori: item)
                                .onTapGesture {
                                    withAnimation {
                                        show.toggle()
                                    }
                                    selectedItem = item
                                }
                        }
                    }
                    .padding()
                }
                .sheet(isPresented: $show, content: {
                    DetailMakananView(kalori: selectedItem)
                })
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Rekomendasi Makanan")
                            .font(Font.custom("poppins-semibold", size: 18))
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image(systemName: "arrow.left")
                .foregroundColor(Color("Ijo"))
                .font(.headline)
                
        })
        .gesture(DragGesture().updating($dragOffset, body: { (value, state, transaction) in
                
            if(value.startLocation.x < 20 && value.translation.width > 100) {
                self.mode.wrappedValue.dismiss()
            }
                    
        }))
    }
}

struct ListMakananView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
