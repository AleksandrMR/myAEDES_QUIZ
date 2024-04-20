//
//  Button1.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import SwiftUI

struct Button1: View {
    
    // MARK: - Var
    var title: String
    var action: () -> ()
    
    // MARK: - Body
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
        }
        .buttonStyle(.button1)
    }
}

// MARK: - Preview
#Preview {
    Button1(title: AppStrings.MainMenu.btnTitle) { }
}
