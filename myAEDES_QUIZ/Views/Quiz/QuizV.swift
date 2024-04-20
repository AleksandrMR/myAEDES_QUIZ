//
//  QuizV.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import SwiftUI


struct QuizV: View {
    
    // MARK: - Var
    @State var showAlertRightAnswer: Bool = false
    @Environment(PointsAccount.self) private var pointsAccount
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            questionSection
            Spacer()
            responseSection
        }
        .alert(Question.capitalsOfEurope[pointsAccount.currentQuestion - 1].rightAnswer, isPresented: $showAlertRightAnswer) {
            Button("Ok", role: .cancel) {
                pointsAccount.nextQuestion()
            }
        }
    }
}

// MARK: - Extension
extension QuizV {
    @ViewBuilder var questionSection: some View {
        VStack {
            AsyncImage(url: Question.capitalsOfEurope[pointsAccount.currentQuestion - 1].imageURL) { img in
                img
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            } placeholder: {
                ProgressView()
                    .frame(width: 100, height: 100)
            }
            Text(Question.capitalsOfEurope[pointsAccount.currentQuestion - 1].title)
                .font(.title)
        }
        .padding()
        .background(pointsAccount.answerColor)
    }
    
    @ViewBuilder var responseSection: some View {
        VStack {
            ForEach(Question.capitalsOfEurope[pointsAccount.currentQuestion - 1].answers, id: \.self) { item in
                Button2(title: item) {
                    if item == Question.capitalsOfEurope[pointsAccount.currentQuestion - 1].rightAnswer {
                        pointsAccount.actionForRightAnswer()
                    } else {
                        pointsAccount.actionForErrorAnswer()
                        showAlertRightAnswer = true
                    }
                }
                .padding(.vertical, 4)
            }
        }
        .padding()
    }
}

// MARK: - Preview
#Preview {
    QuizSC()
        .environment(PointsAccount())
}
