//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Louise Sandlan on 30/03/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
            Question(q: "In a goverment run experiment what percent of guns and other paraphernalia didn't the TSA see during airport security?", a: ["95%", "50%", "35%"], correctAnswer: "95%"),
            Question(q: "In Medieval France, what animal was dressed in human clothes, tried in court, and sentenced to death for eating a child's face?", a: ["Bull", "Dog", "Pig"], correctAnswer: "Pig"),
            Question(q: "What has more germs?", a: ["Toilet", "Phone", "Dish Sponge"], correctAnswer: "Phone"),
            Question(q: "When was the witchcraft act of 1735 last used?", a: ["1844", "1894", "1944"], correctAnswer: "1944"),
            Question(q: "Which Disneyland ride used real skeletons?", a: ["Pirates of the Caribbean", "Haunted Mansion", "Indiana Jones"], correctAnswer: "Pirates of the Caribbean"),
            Question(q: "King Charles II drank alcohol mixed with what?", a: ["Human Skulls", "Cat Hair", "Toe Nails"], correctAnswer: "Human Skulls"),
            Question(q: "What was the first chainsaw invented for?", a: ["Make Coffins", "Embalming", "Childbirth"], correctAnswer: "Childbirth"),
            Question(q: "What type of tree has been found growing in human lungs?", a: ["Fir", "Apple", "Chestnut"], correctAnswer: "Fir"),
            Question(q: "In a train station what percent of the air you breath is human skin?", a: ["5%", "10%", "15%"], correctAnswer: "15%"),
            Question(q: "Why have catfish in India grown so large?", a: ["Eating rubbish", "Eating half cremated people", "Eating other catfish"], correctAnswer: "Eating half cremated people")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correct {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
       return quiz[questionNumber].text
    }
    
    func getChoice1() -> String {
        return quiz[questionNumber].answer[0]
    }
    
    func getChoice2() -> String {
        return quiz[questionNumber].answer[1]
    }
    
    func getChoice3() -> String {
        return quiz[questionNumber].answer[2]
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
