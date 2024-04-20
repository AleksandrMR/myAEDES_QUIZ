//
//  QuizSC.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import SwiftUI


struct QuizSC: View {
    
    // MARK: - Var
    @Environment(PointsAccount.self) private var pointsAccount
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            QuizHeader()
                .environment(pointsAccount)
            ZStack {
                question
            }
        }
        .background(AppColor.blue245FA5.color)
    }
}

// MARK: - Extension
extension QuizSC {
    @ViewBuilder var question: some View {
        QuizV()
            .environment(pointsAccount)
    }
}

// MARK: - Preview
#Preview {
    QuizSC()
        .environment(PointsAccount())
}
