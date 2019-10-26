//
//  Question.swift
//  Quizzler
//
//  Created by Евгений Оводков on 08/04/2018.
//  Copyright © 2018 Evgeny Ovodkov. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let answer: Bool
    
    init (text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
