//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var questionProgress : Int = 0
    var attemptNumber : Int = 1
    var totalScore : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        progressBar.frame.size.width = (view.frame.size.width / 13.0) * CGFloat(questionProgress + 1)
        questionLabel.text = allQuestions.questionlist[questionProgress].questionText
        scoreLabel.text = "Score: \(totalScore)"
        progressLabel.text = "Question \(questionProgress + 1)/13"
    }
    
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            checkAnswer(pickedAnswer: true)
        } else if sender.tag == 2 {
            checkAnswer(pickedAnswer: false)
        }
    }
    
    func checkAnswer(pickedAnswer: Bool) {
        if pickedAnswer == allQuestions.questionlist[questionProgress].answer {
            nextQuestion()
            addPoints()
            attemptNumber = 1
            ProgressHUD.showSuccess("Correct")
            print("Correct")
        } else {
            attemptNumber += 1
            ProgressHUD.showError("Wrong!")
            print("Wrong")
        }
    }
    
    func nextQuestion() {
        if questionProgress < allQuestions.questionlist.count - 1 {
            questionProgress += 1
            updateUI()
        } else {
            let alert = UIAlertController(title: "Congratulations!", message: "You have completed the Quiz, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
            { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true)
        }
    }
    
    func startOver() {
        questionProgress = 0
        totalScore = 0
        updateUI()
    }
    
    func addPoints() {
        if attemptNumber == 1 {
            totalScore += 100
        } else {
            totalScore += 50
        }
    }
}


