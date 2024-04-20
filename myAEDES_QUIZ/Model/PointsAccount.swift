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
    
    // MARK: - Var
    var totalPoints: Int = 0
    private var appRecord: Int = 0
    var currentQuestion: Int = 1
    var quizStatus: QuizStatus = .preStart
    
    
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
        quizStatus = .started
    }
    
    func nextQuestion() {
        if currentQuestion == Question.capitalsOfEurope.count {
            if totalPoints > appRecord {
                appRecord = totalPoints
                endQuiz()
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
                    self.currentQuestion += 1
            }
        }
    }
    
    func endQuiz() {
        quizStatus = .ended
        print("Quiz Ended")
    }
}
