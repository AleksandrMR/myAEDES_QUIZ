//
//  Questions.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import Foundation


struct Question: Identifiable, Equatable {
    let id = UUID()
    let points: Int
    let imageURL: URL
    let title: String
    let answers: [String]
    let rightAnswer: String
}


// MARK: - Extensions
extension Question {
    static var capitalsOfEurope: [Question] {
        [
            Question(
                points: 100,
                imageURL: URL(string: "https://media.timeout.com/images/105211701/750/422/image.jpg")!,
                title: "Choose the capital of Italy?",
                answers: ["Warsaw", "Rome", "Berlin", "Madrid"],
                rightAnswer: "Rome"
            ),
            Question(
                points: 100,
                imageURL: URL(string: "https://hips.hearstapps.com/hmg-prod/images/madrid-city-landscape-with-gran-via-street-spain-royalty-free-image-1683640284.jpg?crop=1.00xw:0.751xh;0,0.240xh&resize=1200:*")!,
                title: "Choose the capital of Spain?",
                answers: ["Lisbona", "Rome", "Madrid", "Berlin"],
                rightAnswer: "Madrid"
            ),
            Question(
                points: 100,
                imageURL: URL(string: "https://www.berlin.de/binaries/asset/image_assets/7927302/ratio_2_1/1708697002/1500x750/")!,
                title: "Choose the capital of Germany?",
                answers: ["Warsaw", "Rome", "Berlin", "Madrid"],
                rightAnswer: "Berlin"
            ),
            Question(
                points: 100,
                imageURL: URL(string: "https://www.nauticareport.it/resizer/picscache/720x420c50/8c1051c87db2625cb2d98895254567b7.jpg")!,
                title: "Choose the capital of Portugal?",
                answers: ["Rome", "Berlin", "Madrid", "Lisbona"],
                rightAnswer: "Lisbona"
            ),
            Question(
                points: 100,
                imageURL: URL(string: "https://static2-viaggi.corriereobjects.it/wp-content/uploads/2015/06/01varsavia.jpg?v=1434224186")!,
                title: "Choose the capital of Poland?",
                answers: ["Rome", "Warsaw", "Berlin", "Madrid"],
                rightAnswer: "Warsaw"
            ),
        ]
    }
}
