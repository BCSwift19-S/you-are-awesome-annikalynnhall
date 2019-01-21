//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Annika Lynn Nordstrom Hall on 1/11/19.
//  Copyright © 2019 Annika Hall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    
    // Code below execute when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {

        let messages = ["You Are Awesome!",
                        "You are Great!",
                        "You are Fantastic!",
                        "When the Genius Bar needs help, they call you.",
                        "You brighten my day!",
                        "You make me smile!",
                        "You are da bomb.",
                        "Hey, Fabulous!",
                        "Hey, Girl ;)",
                        "I really like to eat cheese. It's the greatest food every invented."]
        
        messageLabel.text = messages[index]
        
        if index == messages.count-1{
            index = 0
        } else{
            index += 1
        }
        

//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1{
//            messageLabel.text = message2
//        } else if messageLabel.text == message2{
//            messageLabel.text = message3
//        }else{
//            messageLabel.text = message1
//        }

    }

    }
    


