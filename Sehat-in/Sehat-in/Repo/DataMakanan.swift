//
//  DataMakanan.swift
//  Sehat-in
//
//  Created by Garry on 18/02/22.
//

import SwiftUI

struct Kalori: Identifiable {
    var id = UUID()
    var kategori: String
    var nama: String
    var jumlahKalori: Int
    var photo: String
    var berat: Int
}

var kalories = [
    Kalori(kategori: "Makanan Pokok", nama: "Nasi Putih", jumlahKalori: 175, photo: "nasi_putih", berat: 100),
    Kalori(kategori: "Lauk", nama: "Ayam Goreng", jumlahKalori: 164, photo: "ayam_goreng", berat: 50),
    Kalori(kategori: "Buah", nama: "Pisang", jumlahKalori: 136, photo: "pisang", berat: 125),
    Kalori(kategori: "Sayur", nama: "Selada", jumlahKalori: 12, photo: "selada", berat: 12),
    Kalori(kategori: "Makanan Pokok", nama: "Jagung Rebus", jumlahKalori: 90, photo: "jagung_rebus", berat: 250),
    Kalori(kategori: "Makanan Cepat Saji", nama: "Hamburger", jumlahKalori: 257, photo: "hamburger", berat: 125),
    Kalori(kategori: "Lauk", nama: "Tahu Goreng", jumlahKalori: 111, photo: "tahu_goreng", berat: 100),
    Kalori(kategori: "Makanan Pokok", nama: "Ketupat", jumlahKalori: 32, photo: "ketupat", berat: 160),
    Kalori(kategori: "Buah", nama: "Apel", jumlahKalori: 92, photo: "apel", berat: 160),
    Kalori(kategori: "Buah", nama: "Jeruk", jumlahKalori: 40, photo: "jeruk", berat: 200),
    Kalori(kategori: "Makanan Pokok", nama: "Lontong", jumlahKalori: 38, photo: "lontong", berat: 200),
    Kalori(kategori: "Sayur", nama: "Wortel", jumlahKalori: 41, photo: "wortel", berat: 140),
    Kalori(kategori: "Lauk", nama: "Tempe Goreng", jumlahKalori: 118, photo: "tempe_goreng", berat: 50),
    Kalori(kategori: "Buah", nama: "Alpukat", jumlahKalori: 85, photo: "alpukat", berat: 100),
    Kalori(kategori: "Lauk", nama: "Telur Dadar", jumlahKalori: 188, photo: "omelette", berat: 75),
    Kalori(kategori: "Makanan Pokok", nama: "Roti Tawar", jumlahKalori: 149, photo: "roti_tawar", berat: 60),
    
    Kalori(kategori: "Makanan Cepat Saji", nama: "Pizza", jumlahKalori: 163, photo: "pizza", berat: 125),
    
    Kalori(kategori: "Lauk", nama: "Ikan Lele Goreng", jumlahKalori: 57, photo: "ikan_lele_goreng", berat: 60),
    
    Kalori(kategori: "Buah", nama: "Nanas", jumlahKalori: 104, photo: "nanas", berat: 200),
    
    Kalori(kategori: "Sayur", nama: "Tomat Merah", jumlahKalori: 22, photo: "tomat_merah", berat: 50),
    
]
