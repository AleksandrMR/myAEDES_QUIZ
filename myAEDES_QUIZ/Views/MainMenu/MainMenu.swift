//
//  MainMenu.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import SwiftUI

struct MainMenu: View {
    
    // MARK: - Var
    
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            logo
            Spacer()
            
        }
        .background(AppColor.blue245FA5.color)
    }
}

// MARK: - Extensions
extension MainMenu {
    @ViewBuilder var logo: some View {
        AppImage.logo.image
    }
    
    
}

// MARK: - Preview
#Preview {
    MainMenu()
}
