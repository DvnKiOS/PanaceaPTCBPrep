//
//  PTCBExamModel.swift
//  MediMatch
//
//  Created by Devin King on 2/21/23.
//

import Foundation

struct PTCBExamModel{
    
    let question: String
    let answer: [String]
    let correctAnswer: String
    let questionCategory: String
    
    
    init(question: String, answer: [String], correctAnswer: String, questionCategory: String) {
        self.question = question
        self.answer = answer
        self.correctAnswer = correctAnswer
        self.questionCategory = questionCategory
    }
}
