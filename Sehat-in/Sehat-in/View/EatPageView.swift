//
//  EatPageView.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI

struct EatPageView: View {
    @State var show = false
    @State var selectedItem: Kalori = kalories[0]
    @AppStorage("nama") var nama: String = ""
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .opacity(0.05)
                .ignoresSafeArea()
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            VStack {
                HStack {
                    VStack {
                        HStack {
                            Text("Halo, \(nama)!")
                                .font(Font.custom("poppins-Bold", size: 24))
                                .foregroundColor(Color("Ijo"))
                                
                            
                            Spacer()
                        }
                        .padding(.horizontal)

                    }
                    .ignoresSafeArea()
                    
                    Spacer()
                    
                    NavigationLink(destination: ProfileView()) {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .foregroundColor(Color("Ijo"))
                            .frame(maxWidth: 40, maxHeight: 40)
                            .padding(.horizontal)
                    }
                    .navigationTitle("")
                    .navigationBarHidden(true)

                    
                }
                .padding(.vertical)
                .background(Color(red: 1, green: 1, blue: 1, opacity: 0.5))
                
                ScrollView {
                    VStack {
                        VStack {
                            HStack {
                                Text("Kalkulator Kalori")
                                    .font(Font.custom("poppins-semibold", size: 16))
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                            
                            HStack {
                                Text("Hitung kebutuhan kalori harianmu.")
                                    .font(Font.custom("poppins-regular", size: 14))
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                            
                            CalculatorKalori()
                                .padding(.horizontal)
                        }
                        
                        VStack {
                            HStack {
                                Text("Rekomendasi Makanan")
                                    .font(Font.custom("poppins-semibold", size: 16))
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                            .padding(.top)
                            
                            HStack {
                                Text("Hidup sehat, makanan harus dijaga!")
                                    .font(Font.custom("poppins-regular", size: 14))
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                            
                            VStack {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 16) {
                                        ForEach(kalories[0...3]) { item in
                                            CardMakanan(kalori: item)
                                                .onTapGesture {
                                                    withAnimation {
                                                        show.toggle()
                                                    }
                                                    selectedItem = item
                                                }
                                        }
                                    }
                                    .padding(.horizontal)
                                    .padding(.bottom)
                                }
                                
                                NavigationLink(destination: ListMakananView()) {
                                    HStack {
                                        Spacer()
                                        Text("Lihat selengkapnya")
                                            .font(Font.custom("poppins-semibold", size: 14))
                                            .foregroundColor(Color("Ijo"))
                                    }
                                    .padding(.horizontal)
                                }
                            }
                            .sheet(isPresented: $show, content: {
                                DetailMakananView(kalori: selectedItem)
                            })
                        }
                        
                        VStack {
                            HStack {
                                Text("Tutorial Masak")
                                    .font(Font.custom("poppins-semibold", size: 16))
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                            
                            HStack {
                                Text("Masak? Gampang kok!")
                                    .font(Font.custom("poppins-regular", size: 14))
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                            
                            ForEach(linkReseps) { item in
                                NavigationLink(destination: TutorialView(link: item)) {
                                    BadgeTutorial(link: item)
                                
                                }
                            }
                            .background(.white)
                            .cornerRadius(12)
                            .padding(.horizontal)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.gray, lineWidth: 1)
                                    .opacity(0.2)
                                    .padding(.horizontal)
                            )
                        }
                        .padding(.top)
                    }
                }
            }
        }
        .onTapGesture {
            hideKeyboard()
        }
    }
}

struct EatPageView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
