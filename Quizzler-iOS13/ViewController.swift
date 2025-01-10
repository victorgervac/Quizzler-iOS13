//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    
    let quiz = [ ["Four + Two equals six","True"],
                 ["five - Three is greated than one","True"],
                 ["Three + Eight is less than ten","False"]]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer =  quiz[questionNumber][1]
        
        if userAnswer == actualAnswer{
            print("Correct")
            
        }else{
            print("Incorrect")
        }
        questionNumber += 1
        updateUI()
        
    }
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
    }

}

