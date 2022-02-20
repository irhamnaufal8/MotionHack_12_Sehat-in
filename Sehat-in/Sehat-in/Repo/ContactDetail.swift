//
//  ContactDetail.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI

struct DetailContact: Identifiable {
    var id = UUID()
    var nama: String
    var jabatan: String
    var foto: String
    var phone: String
}

var detailContacts = [
    DetailContact(nama: "dr. Sherly", jabatan: "Ahli Gizi", foto: "portrait", phone: "085156790118"),
    DetailContact(nama: "Aderay", jabatan: "Binaragawan", foto: "Foto Aderay", phone: "085156790118"),
    DetailContact(nama: "Bambang P", jabatan: "Pemain Bola", foto: "Foto Bambang", phone: "085156790118")
]


