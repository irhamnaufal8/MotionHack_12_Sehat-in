//
//  CalculatorKalori.swift
//  Sehat-in
//
//  Created by Garry on 18/02/22.
//

import SwiftUI

struct CalculatorKalori: View {
    @AppStorage("input1") var input1: String = ""
    @AppStorage("input2") var input2: String = ""
    @AppStorage("input3") var input3: String = ""
    
    var calculation: String {
        guard input1.isEmpty == false, input2.isEmpty == false, input3.isEmpty == false else { return "" }

        guard let tinggi = Double(input1), let berat  = Double(input2), let usia  = Double(input3) else { return "Error" }

        let kalori = (88.4 + 13.4 * berat) + (4.8 * tinggi) - (5.68 * usia)
        return String(format: "%.2f", kalori)
    }
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Tinggi Badan:")
                    .font(Font.custom("poppins-medium", size: 15))
                    .foregroundColor(.black)
                
                Spacer()
                
                TextField("170", text: $input1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.trailing)
                    .font(Font.custom("poppins-medium", size: 15))
                    .foregroundColor(.black)
                    .accentColor(Color("Ijo"))
                    .frame(maxWidth: 120)
                    .keyboardType(.decimalPad)
                
                Text("cm")
                    .font(Font.custom("poppins-medium", size: 15))
                    .foregroundColor(.black)
                    .frame(maxWidth: 80, alignment: .leading)
            }
            .padding(.horizontal)
            
            HStack {
                Text("Berat Badan:")
                    .font(Font.custom("poppins-medium", size: 15))
                    .foregroundColor(.black)
                
                Spacer()
                
                TextField("60", text: $input2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.trailing)
                    .font(Font.custom("poppins-medium", size: 15))
                    .accentColor(Color("Ijo"))
                    .foregroundColor(.black)
                    .frame(maxWidth: 120)
                    .keyboardType(.decimalPad)
                
                Text("kg")
                    .font(Font.custom("poppins-medium", size: 15))
                    .foregroundColor(.black)
                    .frame(maxWidth: 80, alignment: .leading)
            }
            .padding(.horizontal)
            
            HStack {
                Text("Usia:")
                    .font(Font.custom("poppins-medium", size: 15))
                    .foregroundColor(.black)
                
                Spacer()
                
                TextField("20", text: $input3)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.trailing)
                    .font(Font.custom("poppins-medium", size: 15))
                    .accentColor(Color("Ijo"))
                    .foregroundColor(.black)
                    .frame(maxWidth: 120)
                    .keyboardType(.decimalPad)
                
                Text("tahun")
                    .font(Font.custom("poppins-medium", size: 15))
                    .foregroundColor(.black)
                    .frame(maxWidth: 80, alignment: .leading)
            }
            .padding(.horizontal)
            
            Rectangle()
                .foregroundColor(.gray)
                .frame(maxHeight: 1)
                .opacity(0.2)

            HStack {
                Text("Kebutuhan Kalori:")
                    .font(Font.custom("poppins-semibold", size: 15))
                    .foregroundColor(Color("Biru"))
                
                Spacer()
                
                Text(calculation)
                    .font(Font.custom("poppins-bold", size: 18))
                    .foregroundColor(Color("Ijo"))
                
                Text("kilokalori")
                    .font(Font.custom("poppins-semibold", size: 16))
                    .foregroundColor(Color("Biru"))
                    .frame(maxWidth: 80, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .padding(.vertical)
        .background(.white)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray, lineWidth: 1)
                .opacity(0.2)
        )
    }
}

struct CalculatorKalori_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorKalori()
    }
}
