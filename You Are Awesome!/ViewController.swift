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
    
    
    // Code below execute when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        if messageLabel.text == "You Are Awesome!"{
            messageLabel.text = "You Are Great!"
        } else if messageLabel.text == "You Are Great!"{
            messageLabel.text = "You Are Amazing!"
        }else{
            messageLabel.text = "You Are Awesome!"
        }
    }

    }
    


