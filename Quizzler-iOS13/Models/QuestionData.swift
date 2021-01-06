//
//  QuestionData.swift
//  Quizzler-iOS13
//
//  Created by Anh Nguyen on 1/4/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuestionData {
    let quiz = [
        QuizStruct(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        QuizStruct(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        QuizStruct(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        QuizStruct(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        QuizStruct(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        QuizStruct(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        QuizStruct(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        QuizStruct(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        QuizStruct(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
            QuizStruct(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]

    public var questionNum = 0

    func getQuestionText() -> String {
        return quiz[questionNum].questions
    }

    func getProgress() -> Float {
        let progress = Float(questionNum) / Float(quiz.count)
        return progress
    }

    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNum].correctAnswer {
            return true
        } else {
            return false
        }
    }

    mutating func nextQuestion() {
        if questionNum < quiz.count - 1 {
            questionNum += 1
        } else {
            questionNum = 0
        }
    }
}
