//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Anh Nguyen on 1/4/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizStruct {
    let questions: String
    let correctAnswer: String
    let choices: [String]

    init(q: String, a: [String], correctAnswer: String) {
        self.questions = q
        self.correctAnswer = correctAnswer
        self.choices = a
    }
}
