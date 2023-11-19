//
//  AppColor.swift
//  Pride
//
//  Created by Cathay Pride Team on 11/18/23.
//

import Foundation
import UIKit
import SwiftUI

extension Color {
    
    static var appBG : Color {
        let baseColor = #colorLiteral(red: 0.9686275125, green: 0.9686275125, blue: 0.9686275125, alpha: 1)
        return Color(uiColor: baseColor)
    }
    
    static var appGreen : Color {
        let baseColor = #colorLiteral(red: 0.2458609939, green: 0.5119712353, blue: 0.51733464, alpha: 1)
        return Color(uiColor: baseColor)
    }
    

    static var appTagGreen : Color {
        let baseColor = #colorLiteral(red: 0.006937109865, green: 0.3944100738, blue: 0.3911792636, alpha: 1)
        return Color(uiColor: baseColor)
    }
    
    static var appButtonGreen : Color {
        let baseColor = #colorLiteral(red: 0.409683764, green: 0.5367916226, blue: 0.6159880161, alpha: 1)
        return Color(uiColor: baseColor)
    }
    
    static var appTagBorderGreen : Color {
        let baseColor = #colorLiteral(red: 0.3053794503, green: 0.5790262222, blue: 0.5756331086, alpha: 1)
        return Color(uiColor: baseColor)
    }
    
    
}
