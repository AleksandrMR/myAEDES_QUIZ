//
//  AppImage.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import SwiftUI

enum AppImage: String {
    case logo
}

// MARK: - Extension
extension AppImage {
    var image: Image {
        Image(rawValue)
    }
}
