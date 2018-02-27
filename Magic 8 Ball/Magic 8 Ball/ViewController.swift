//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Chloe Elliott on 2/22/18.
//  Copyright © 2018 Chloe Elliott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomMagicBallIndex : Int = 0
    
    let magicArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var magicBallView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateMagicImages()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPushed(_ sender: UIButton) {
        
        updateMagicImages()
    }
    

    func updateMagicImages() {
       
        randomMagicBallIndex = Int(arc4random_uniform(5))
        
        magicBallView.image = UIImage(named: magicArray[randomMagicBallIndex])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateMagicImages()
    }
}

