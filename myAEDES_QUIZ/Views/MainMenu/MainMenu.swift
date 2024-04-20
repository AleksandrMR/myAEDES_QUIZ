//
//  MainMenu.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import SwiftUI

struct MainMenu: View {
    
    // MARK: - Var
    @Environment(PointsAccount.self) private var pointsAccount
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            subTitle
            logo
            appRecord
            startBtn
            Spacer()
        }
        .padding(.horizontal)
        .background(AppColor.blue245FA5.color)
    }
}

// MARK: - Extensions
extension MainMenu {
    @ViewBuilder var logo: some View {
        AppImage.logo.image
            .resizable()
            .scaledToFit()
            .padding()
    }
    
    @ViewBuilder var subTitle: some View {
        Text("\(AppStrings.MainMenu.title)")
            .foregroundColor(AppColor.white.color)
            .font(.title)
    }
    
    @ViewBuilder var appRecord: some View {
        HStack {
            Text(
                "\(AppStrings.MainMenu.appRecord) \(pointsAccount.getAppRecord()) \(AppStrings.MainMenu.points)"
            )
            .foregroundColor(AppColor.white.color)
            .fontWeight(.bold)
        }
        .padding(.vertical)
    }
    
    @ViewBuilder var startBtn: some View {
        VStack {
            Button1(title: AppStrings.MainMenu.btnTitle) {
                pointsAccount.startNewQuiz()
            }
            .padding(.vertical)
        }
    }
}

// MARK: - Preview
#Preview {
    MainMenu()
        .environment(PointsAccount())
}
