//
//  ViewController.swift
//  Personifier
//
//  Created by admin on 9/22/19.
//  Copyright © 2019 Mar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var button2View: UIButton!
    @IBOutlet weak var button1View: UIButton!
    @IBOutlet weak var beginButtonView: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var scriptLabel: UILabel!
    @IBOutlet weak var personifierLabel: UILabel!
    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var framView: UIImageView!
    @IBOutlet weak var introvertView: UIImageView!
    @IBOutlet weak var extravertView: UIImageView!
    @IBOutlet weak var ambevertView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        button2View.isHidden = true
        button1View.isHidden = true
        descriptionLabel.isHidden = true
        questionsLabel.isHidden = true
        restartButton.isHidden = true
        
        nextQuestion()
    }

    @IBAction func beginButton(_ sender: UIButton) {
        if sender.tag == 3 {
            Begin()
            
            
        nextQuestion()
            
        }
        
    }
    
    @IBAction func restartButtonPress(_ sender: UIButton) {
    if sender.tag == 4 {
            restart()
        
        }
    }
    @IBAction func buttonPress(_ sender: UIButton) {
 
        if sender.tag == 1 {
            pickedAnswer = true
            }
        else if sender.tag == 2 {
            pickedAnswer = false
            }
            checkAnswer()
            questionNumber += 1
        nextQuestion()
        print(score)
        }
    func nextQuestion() {
        if questionNumber <= 9 {
            questionsLabel.text = allQuestions.list[questionNumber].questionText
        }
        else {
            displayResults()
        }
    }
    func checkAnswer() {
     let ans = allQuestions.list[questionNumber].answer
       if ans == pickedAnswer {
            score += 1
        }
    }
    func displayResults() {
    if score <= 4 {
        extravertView.isHidden = false
        personifierLabel.text = "Extrovert"
        descriptionLabel.text = "You're the life of the party!"
        result()

    }
    else if score > 4 && score <= 6 {
        ambevertView.isHidden = false
        personifierLabel.text = "Ambivert"
        descriptionLabel.text = "You're a balanced individual occupying traits from both personality types"
        result()

        }
    else if score >= 7 {
        introvertView.isHidden = false
        personifierLabel.text = "Introvert"
        descriptionLabel.text = "You're quite shy and would rather keep to yourself."
        result()
        
        }
    }
    func restart() {
        score = 0
        questionNumber = 0
        nextQuestion()
        
        Begin()
        
        
    }
    func Begin() {
        ambevertView.isHidden = true
        introvertView.isHidden = true
        extravertView.isHidden = true
        personifierLabel.isHidden = true
        button2View.isHidden = false
        button1View.isHidden = false
        questionsLabel.isHidden = false
        restartButton.isHidden = true
        button2View.isHidden = false
        button1View.isHidden = false
        scriptLabel.isHidden = true
        beginButtonView.isHidden = true
        descriptionLabel.isHidden = true
    }
    func result() {
        personifierLabel.isHidden = false
        button2View.isHidden = true
        button1View.isHidden = true
        descriptionLabel.isHidden = false
        questionsLabel.isHidden = true
        restartButton.isHidden = false
    }
}


