//
//  ViewController.swift
//  Quizzler-iOS13

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    
    let quiz = [
    ["Four + Two equals Six.", "True"],
    ["Five - Three is greater than One", "True"],
    ["Three + Eight is than than Ten", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1
        
        let userAnswer = sender.currentTitle //True, False
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("Wrong!")
        }
        
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
}

