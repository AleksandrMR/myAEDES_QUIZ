//
//  QuizHeader.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import SwiftUI

struct QuizHeader: View {
    
    // MARK: - Var
    @Environment(PointsAccount.self) private var pointsAccount
    
    // MARK: - Body
    var body: some View {
        HStack {
            quizInfo
        }
        .padding()
        .background(AppColor.white.color)
    }
}

// MARK: - Extension
extension QuizHeader {
    @ViewBuilder var quizInfo: some View {
        Text(
            "\(AppStrings.Quiz.questions) \(pointsAccount.currentQuestion) \(AppStrings.Quiz.of) \(Question.capitalsOfEurope.count) - \(AppStrings.Quiz.yourPoints) \(pointsAccount.totalPoints)"
        )
        .foregroundColor(AppColor.blue245FA5.color)
        .frame(maxWidth: .infinity)
    }
}

// MARK: - Preview
#Preview {
    QuizSC()
        .environment(PointsAccount())
}
