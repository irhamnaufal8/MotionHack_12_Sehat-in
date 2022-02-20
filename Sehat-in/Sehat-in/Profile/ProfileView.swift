//
//  ProfileView.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct ProfileView: View {
    @State private var showingAlert = false
    @State private var showingAlert2 = false
    @AppStorage("log_Status") var log_Status = false
    @AppStorage("subscribe") var subscribe = false
    @AppStorage("nama") var nama: String = ""
    @AppStorage("namaBelakang") var namaBelakang: String = ""
    @AppStorage("input1") var input1: String = ""
    @AppStorage("input2") var input2: String = ""
    @AppStorage("input3") var input3: String = ""
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Image(systemName: "person.crop.circle.fill")
                    .font(.system(size: 80))
                    .foregroundColor(Color("Ijo"))
                    .padding()
                
                VStack {
                    HStack {
                        Text("Nama:")
                            .font(Font.custom("poppins-medium", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("\(nama) \(namaBelakang)")
                            .font(Font.custom("poppins-medium", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Tinggi Badan:")
                            .font(Font.custom("poppins-medium", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("\(input1) cm")
                            .font(Font.custom("poppins-medium", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Berat Badan:")
                            .font(Font.custom("poppins-medium", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("\(input2) kg")
                            .font(Font.custom("poppins-medium", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Usia:")
                            .font(Font.custom("poppins-medium", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("\(input3) tahun")
                            .font(Font.custom("poppins-medium", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal)
                }
                
                Rectangle()
                    .foregroundColor(Color("Abu"))
                    .frame(maxWidth: .infinity, maxHeight: 2)
                    .padding()
                
                if subscribe == true {
                    Button("Batalkan Langganan") {
                        withAnimation {
                            showingAlert = true
                        }
                    }
                    .font(Font.custom("poppins-semibold", size: 16))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("Biru"))
                    .cornerRadius(80)
                    .alert(isPresented:$showingAlert) {
                        Alert(
                            title: Text("Batalkan Langganan?"),
                            message: Text("Kamu harus berlangganan untuk dapat mengakses fitur premium."),
                            primaryButton: .destructive(Text("Ya")) {
                                withAnimation {
                                    subscribe = false
                                }
                            },
                            secondaryButton: .cancel()
                        )
                    }
                } else {
                    Button("Kembali Berlangganan") {
                        withAnimation {
                            showingAlert = true
                        }
                    }
                    .font(Font.custom("poppins-semibold", size: 16))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("Ijo"))
                    .cornerRadius(80)
                    .alert(isPresented:$showingAlert) {
                        Alert(
                            title: Text("Kembali Berlangganan?"),
                            message: Text("Kamu bisa membatalkan langganan kapan pun kamu mau."),
                            primaryButton: .destructive(Text("Ya")) {
                                withAnimation {
                                    subscribe = true
                                }
                            },
                            secondaryButton: .cancel()
                        )
                    }
                }
                
                Button("Log Out") {
                    showingAlert2 = true
                }
                .font(Font.custom("poppins-semibold", size: 16))
                .foregroundColor(.red)
                .padding()
                .alert(isPresented:$showingAlert2) {
                    Alert(
                        title: Text("Keluar dari akun?"),
                        message: Text("Kamu harus log in kembali untuk menggunakan aplikasi Sehat-in."),
                        primaryButton: .destructive(Text("Ya")) {
                            GIDSignIn.sharedInstance.signOut()
                            try? Auth.auth().signOut()
                            
                            nama = ""
                            namaBelakang = ""
                            input1 = ""
                            input2 = ""
                            input3 = ""
                            
                            withAnimation {
                                log_Status = false
                            }
                        },
                        secondaryButton: .cancel()
                    )
                }
                
                Text("Version 1.0 Beta")
                    .font(Font.custom("poppins-semibold", size: 14))
                    .foregroundColor(.black)
                
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
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
