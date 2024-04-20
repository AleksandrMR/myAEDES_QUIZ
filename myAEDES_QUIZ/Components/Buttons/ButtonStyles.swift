//
//  ButtonStyles.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import SwiftUI


struct Button1Style: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(AppColor.white.color)
            .textCase(.uppercase)
            .frame(maxWidth: .infinity)
            .padding()
            .background(AppColor.blue6DA3D9.color)
    }
}

struct Button2Style: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(AppColor.black.color)
            .frame(maxWidth: .infinity)
            .padding()
    }
}

// MARK: - Extensions
extension ButtonStyle where Self == Button1Style {
    static var button1: Button1Style {
        Button1Style()
    }
    
    static var button2: Button2Style {
        Button2Style()
    }
}
