//
//  QuizBrain.swift
//  Quiz App
//
//  Created by Irtaza Ali on 11/18/21.
//

import Foundation

struct QuizBrain {

var QuestionBank = [

        Question(text: "2 + 4 = 6", answer: "True"),
        Question(text: "0 - 1 = 1", answer: "False"),
        Question(text: "1 + 1 = 3", answer: "False"),
        Question(text: "2 + 2 = 6", answer: "False"),
        
        
    ]

    var QuestionNumber = 0
 
    func getQuestion() -> String {
        
        return QuestionBank[QuestionNumber].text
        
    }
    
    func checkAnswer (_ userInput : String) -> Bool{
        
        if userInput == QuestionBank[QuestionNumber].answer {
            
            return true
            
        }
         
        else {
            
            return false
            
        }
        
    }
    

      mutating func nextQuestion() {
            
            if QuestionNumber + 1 < QuestionBank.count {
                QuestionNumber += 1
            }
            
            else {
                
                QuestionNumber = 0
            }
        }
    }
