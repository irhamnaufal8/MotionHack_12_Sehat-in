//
//  Slide3.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct Slide3: View {
    
    @State var isLoading: Bool = false
    
    @AppStorage("log_Status") var log_Status = false
    @AppStorage("nama") var nama: String = ""
    @AppStorage("namaBelakang") var namaBelakang: String = ""
    
    
    var inputNama: String {
        guard nama.isEmpty == false, namaBelakang.isEmpty == false else { return "" }
        let username = nama
        return username
    }
    
    var body: some View {
        ZStack {
            VStack {
                Text("Mau hidup sehat?")
                    .font(Font.custom("Poppins-Medium", size: 20))
                    .foregroundColor(.white)
                HStack {
                    Text("Sehat-in")
                        .font(Font.custom("Poppins-Bold", size: 24))
                        .foregroundColor(.white)
                    Text("aja!")
                        .font(Font.custom("Poppins-Medium", size: 24))
                        .foregroundColor(.white)
                }
                
                TextField("Nama Depan", text: $nama)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("poppins-medium", size: 18))
                    .foregroundColor(.black)
                    .accentColor(Color("Ijo"))
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    .padding(.bottom, 1)
                
                TextField("Nama Belakang", text: $namaBelakang)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("poppins-medium", size: 18))
                    .foregroundColor(.black)
                    .accentColor(Color("Ijo"))
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    .padding(.bottom, 6)
                
                Button {
                    handleLogin()
                } label: {
                    HStack {
                        Image("google")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 20)

                        
                        Text("Log In dengan Google")
                            .font(Font.custom("Poppins-Medium", size: 18))
                            .foregroundColor(Color("Biru"))
                            .padding(.horizontal)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(12)
                    .background(.white)
                    .cornerRadius(60)
                    .padding(.horizontal)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Ijo"))
            .overlay(
                
                ZStack {
                    if isLoading {
                        Color.black
                            .opacity(0.25)
                            .ignoresSafeArea()
                        
                        ProgressView()
                            .font(.title2)
                            .frame(width: 60, height: 60)
                            .background(.white)
                            .cornerRadius(10)
                    }
                }
                
        )
        }
        .onTapGesture {
            hideKeyboard()
        }
    }
    
    func handleLogin() {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        
        isLoading = true
        
        GIDSignIn.sharedInstance.signIn(with: config, presenting: getRootViewController()) {[self] user, err in
            if let error = err {
                isLoading = false
                print(error.localizedDescription)
                return
              }

              guard
                let authentication = user?.authentication,
                let idToken = authentication.idToken
              else {
                  isLoading = false
                return
              }

              let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                             accessToken: authentication.accessToken)
            
            Auth.auth().signIn(with: credential) { result, err in
                
                isLoading = false
                if let error = err {
                    print(error.localizedDescription)
                    return
                }
                
                guard let user = result?.user else {
                    return
                }
                
                print(user.displayName ?? "Success@")
                
                withAnimation {
                    log_Status = true
                }
            }
        }
    }
}

struct Slide3_Previews: PreviewProvider {
    static var previews: some View {
        Slide3()
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
    
    func getRootViewController() -> UIViewController {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .init()
        }
        
        guard let root = screen.windows.first?.rootViewController else {
            return .init()
        }
        
        return root
    }
}
