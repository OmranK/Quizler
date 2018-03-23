//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Omran Khoja on 3/2/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var questionlist = [Question]()
    
    init(){
        // Creating a quiz item and appending it to the list
        let firstQuestion = Question(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true)
        
        // Add the Question to the list of questions
        questionlist.append(firstQuestion)
        
        // skipping one step and just creating the quiz item inside the append function
        questionlist.append(Question(text: "A slug\'s blood is green.", correctAnswer: true))
        
        questionlist.append(Question(text: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
        
        questionlist.append(Question(text: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
        
        questionlist.append(Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
        
        questionlist.append(Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
        
        questionlist.append(Question(text: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
        
        questionlist.append(Question(text: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
        
        questionlist.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        questionlist.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        questionlist.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        questionlist.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        questionlist.append(Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))    }
    
}
