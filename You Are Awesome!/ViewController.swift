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
    
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int{
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }
    
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer){
        //Can we load in the file soundName?
        if let sound = NSDataAsset(name: soundName){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch{
                print("ERROR: data in \(soundName) couldn't be played as a sound.")
            }
        }else{
            print("ERROR: file \(soundName) didn't load.")
        }
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
        
        
        
        //SHOW MESSAGE:
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //SHOW IMAGE:
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //PLAY SOUND:
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName, audioPlayer: &awesomePlayer)

    }
    

    }
    


