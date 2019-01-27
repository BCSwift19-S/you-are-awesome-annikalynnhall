//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Annika Lynn Nordstrom Hall on 1/11/19.
//  Copyright © 2019 Annika Hall. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImageView: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 3
    
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
        
        var newIndex: Int
        
        //SHOW MESSAGE:
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        //SHOW IMAGE:
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //PLAY SOUND:
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        
        var soundName = "sound\(soundIndex)"
        
        //Can we load in the file soundName?
        if let sound = NSDataAsset(name: soundName){
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch{
                print("ERROR: data in \(soundName) couldn't be played as a sound.")
            }
        }else{
            print("ERROR: file \(soundName) didn't load.")
        }
    }

    }
    


