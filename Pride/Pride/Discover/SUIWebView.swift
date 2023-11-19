//
//  SUIWebView.swift
//  Pride
//
//  Created by Yu Ho Kwok on 11/19/23.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView  {
        let wkwebView = WKWebView()
        let request = URLRequest(url: url)
        wkwebView.load(request)
        return wkwebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}

#Preview {
    WebView(url: URL(string: "https://www.google.com/maps/d/u/0/viewer?mid=1_a4aoC7dYGE3w7no6Ftrp7lLt1U&hl=en_US&ll=-34.57072749999998%2C150.77570749999992&z=8")!)
}
