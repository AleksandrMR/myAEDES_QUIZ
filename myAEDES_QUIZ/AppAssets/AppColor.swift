//
//  AppColor.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import SwiftUI


enum AppColor: String {
    case white
    case black
    case blue245FA5
    case blue6DA3D9
    
}

// MARK: - Extension
extension AppColor {
    var color: Color {
        Color(rawValue)
    }
}
