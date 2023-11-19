//
//  AppView.swift
//  Pride
//
//  Created by Cathay Pride Team on 11/18/23.
//

import SwiftUI

struct AppView {
    @ViewBuilder
    static func appButton(button : DiscoverButton) -> some View {
        HStack {
            Image(systemName: button.image)
                .padding([.leading], 20)
                .foregroundColor(Color.appButtonGreen)
            Spacer()
            Text(button.title)
                .font(.system(size: 14))
                .foregroundStyle(Color.appGreen)
            Spacer()
            Image(systemName: "chevron.right")
                .padding([.trailing], 20)
                .foregroundColor(Color.appButtonGreen)
        }
        .frame(minHeight: 50)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.appButtonGreen,
                        lineWidth: 2)
        }
    }
    
    
    @ViewBuilder 
    static func title(_ string : String,
                            image : String? = nil) -> some View {
        HStack {
            if let image = image {
                Image(systemName: image)
                    .font(.system(size: 10))
            }
            Text(string)
                .font(.system(size: 10))
        }
    }
    
}
