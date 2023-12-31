//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by evo on 30/12/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct QuizBrain {

    var questionNumber = 0
    var score = 0
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]

    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        let userGotItRight = userAnswer == quiz[questionNumber].correctAnswer
        if userGotItRight {
            score += 1
        }
        return userGotItRight
    }

    mutating func nextQuestion() {
        if self.questionNumber < quiz.count - 1 {
            self.questionNumber += 1
        } else {
            self.questionNumber = 0
            self.score = 0
        }
    }

    func getQuizProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }

    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }

    func getScore() -> Int {
        return score
    }

    func getAnswerOptions() -> [String] {
        return quiz[questionNumber].answerList
    }

}
