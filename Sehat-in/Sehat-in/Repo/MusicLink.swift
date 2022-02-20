//
//  MusicLink.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI

struct LinkMusic: Identifiable {
    var id = UUID()
    var judul: String
    var linkMusik: String
    var photo: String
}

var linkMusics = [
    LinkMusic(judul: "Suara Hujan by Pria yang santai", linkMusik: "https://www.youtube.com/embed/q76bMs-NwRk", photo: "rain"),
    LinkMusic(judul: "Musik Piano Menenangkan by Soothing Relaxation", linkMusik: "https://www.youtube.com/embed/77ZozI0rw7w", photo: "piano"),
    LinkMusic(judul: "Epic Thunder & RAIN by Soothing Relaxation", linkMusik: "https://www.youtube.com/embed/77ZozI0rw7w", photo: "thunder")
]
