//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTime = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var totalTime = 0
    var secondPassed = 0
    
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        totalTime = eggTime[hardness]!
        progressBar.progress = 0.0
        secondPassed = 0
        titleLabel.text = hardness
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                             target:self, selector: #selector(updateTimer), userInfo:nil, repeats:true)
        
    }
    @objc func updateTimer() {
        if secondPassed < totalTime {
            secondPassed += 1
            progressBar.progress = Float(secondPassed) / Float(totalTime)
            
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
}
 
