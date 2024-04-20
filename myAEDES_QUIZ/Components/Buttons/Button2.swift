//
//  Button2.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import SwiftUI

struct Button2: View {
    
    // MARK: - Var
    var title: String
    var bgColor: Color
    var action: () -> ()
    
    // MARK: - Body
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
        }
        .buttonStyle(.button2)
        .background(bgColor)
        .cornerRadius(9)
    }
}

// MARK: - Preview
#Preview {
    Button2(title: AppStrings.MainMenu.btnTitle, bgColor: AppColor.white.color) { }
}
