//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

//playing sound - follow this recipe

import UIKit
import AVFoundation // step 1 import the module for sound

class ViewController: UIViewController, AVAudioPlayerDelegate { //step 2
    
    var audioPlayer : AVAudioPlayer! //step 3
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectedSoundFileName : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFileName = soundArray[sender.tag - 1]
        
        print(selectedSoundFileName)
        
        playSound()
    }
    
    func playSound() {
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav") //step 4
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!) //step 5
        }
        catch {
            print(error)
        }
        
        audioPlayer.play() //step 6
    }
 

}

