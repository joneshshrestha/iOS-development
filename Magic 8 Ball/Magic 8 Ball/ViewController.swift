//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jonesh Shrestha on 9/8/19.
//  Copyright © 2019 Jonesh Shrestha. All rights reserved.
//

import UIKit

let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
var randomBallNumber = 0

class ViewController: UIViewController {
    
    @IBOutlet weak var ballImage: UIImageView!
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateBallImage()
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateBallImage() {
        
        randomBallNumber = Int.random(in: 0 ... 4)
        ballImage.image = UIImage(named: ballArray[randomBallNumber])
        
    }
}

