//
//  ViewController.swift
//  Quiz App
//
//  Created by Irtaza Ali on 10/27/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var question: UILabel!
    
    var quizbrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI() //calling a function
    }
    
    func updateUI() {
        
        question.text = quizbrain.getQuestion() 
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        
    }
    
    @IBAction func buttonpressed(_ sender: UIButton) {
    }
    
    let userInput = sender.currentTitle!
        
    let checkAnswer = quizbrain.checkAnswer(userInput)
           
    
    if checkAnswer {
            
            sender.backgroundcolor = UIColor.green
        }
        
        else {
            
            sender.backgroundcolor = UIColor.red
        }
        
    quizbrain.nextQuestion()
    
    Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userinfo: nil, repeats: true)
    }


