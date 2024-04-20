//
//  ContentView.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Var
    @State private var pointsAccount = PointsAccount()
    
    // MARK: - Body
    var body: some View {
        ZStack {
            switch pointsAccount.quizStatus {
            case .preStart:
                MainMenu()
                    .environment(pointsAccount)
            case .started:
                QuizSC()
                    .environment(pointsAccount)
            case .ended:
                MainMenu()
                    .environment(pointsAccount)
            }
        }
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
