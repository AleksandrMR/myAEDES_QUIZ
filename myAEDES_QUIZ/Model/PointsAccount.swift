//
//  PointsAccount.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import SwiftUI


@Observable
class PointsAccount {
    
    enum QuizStatus: Equatable {
        case preStart
        case started
        case ended
    }
    
    // MARK: - Storage
    @ObservationIgnored @AppStorage("appRecord") private var appRecord: Int = 0
    
    // MARK: - Var
    var totalPoints: Int = 0
    var currentQuestion: Int = 1
    var quizStatus: QuizStatus = .preStart
    var answerColor: Color = AppColor.white.color
    
    
    // MARK: - Flow funcs
    func getAppRecord() -> Int {
        return appRecord
    }
    
    func saveAppRecord(newRecord: Int) {
        appRecord = newRecord
    }
    
    func startNewQuiz() {
        totalPoints = 0
        currentQuestion = 1
        answerColor = AppColor.white.color
        quizStatus = .started
    }
    
    func nextQuestion() {
        if currentQuestion == Question.capitalsOfEurope.count {
            if totalPoints > appRecord {
                saveAppRecord(newRecord: totalPoints)
                endQuiz()
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.answerColor = AppColor.white.color
                self.currentQuestion += 1
            }
        }
    }
    
    func endQuiz() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.quizStatus = .ended
        }
    }
    
    func actionForRightAnswer() {
        answerColor = .green
        totalPoints += Question.capitalsOfEurope[currentQuestion - 1].points
        nextQuestion()
    }
    
    func actionForErrorAnswer() {
        answerColor = .red
    }
}
