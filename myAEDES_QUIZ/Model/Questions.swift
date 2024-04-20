//
//  Questions.swift
//  myAEDES_QUIZ
//
//  Created by Aleksandr Milashevski on 20/04/24.
//

import Foundation


struct Questions: Identifiable, Equatable {
    let id = UUID()
    let score: Int
    let imageURL: URL
    let title: String
    let answers: [String]
    let rightAnswer: String
}


// MARK: - Extensions
extension Questions {
    static var capitalsOfEurope: [Questions] {
        [
            Questions(
                score: 100,
                imageURL: URL(string: "https://en.wikipedia.org/wiki/Rome#/media/File:Rome_skyline_panorama.jpg")!,
                title: "Choose the capital of Italy?",
                answers: ["Warsaw", "Rome", "Berlin", "Madrid"],
                rightAnswer: "Rome"
            ),
            Questions(
                score: 100,
                imageURL: URL(string: "https://en.wikipedia.org/wiki/Madrid#/media/File:Madrid_-_Sky_Bar_360º_(Hotel_Riu_Plaza_España),_vistas_19.jpg")!,
                title: "Choose the capital of Spain?",
                answers: ["Lisbona", "Rome", "Madrid", "Berlin"],
                rightAnswer: "Madrid"
            ),
            Questions(
                score: 100,
                imageURL: URL(string: "https://en.wikipedia.org/wiki/Berlin#/media/File:Museumsinsel_Berlin_Juli_2021_1_(cropped).jpg")!,
                title: "Choose the capital of Germany?",
                answers: ["Warsaw", "Rome", "Berlin", "Madrid"],
                rightAnswer: "Berlin"
            ),
            Questions(
                score: 100,
                imageURL: URL(string: "https://en.wikipedia.org/wiki/Lisbon#/media/File:Lisbon_(36831596786)_(cropped).jpg")!,
                title: "Choose the capital of Portugal?",
                answers: ["Rome", "Berlin", "Madrid", "Lisbona"],
                rightAnswer: "Lisbona"
            ),
            Questions(
                score: 100,
                imageURL: URL(string: "https://en.wikipedia.org/wiki/Warsaw#/media/File:Aleja_Niepdleglosci_Warsaw_2022_aerial_(cropped).jpg")!,
                title: "Choose the capital of Poland?",
                answers: ["Rome", "Warsaw", "Berlin", "Madrid"],
                rightAnswer: "Warsaw"
            ),
        ]
    }
}
