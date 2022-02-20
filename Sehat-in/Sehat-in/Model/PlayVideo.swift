//
//  PlayVideo.swift
//  Sehat-in
//
//  Created by Garry on 18/02/22.
//

import SwiftUI
import WebKit

struct PlayVideo: UIViewRepresentable {
    
    var videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: videoID) else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
