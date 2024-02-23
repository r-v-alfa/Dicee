//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number:Int = 0
    var leftDiceNumber:Int = 1
    var rightDiceNumber:Int = 5
    @IBOutlet weak var LlabelNumber: UILabel!
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    //1
    //2
    //3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

      
        
    }
    @IBAction func restartDices(_ sender: UIButton) {
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceTwo")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceThree")
    }
    
    
    @IBAction func buttonFlipp(_ sender: UIButton) {
        number += 1
        LlabelNumber.text = "You rolled " + String(number) + " time/s"
        diceImageView1.image = [UIImage(imageLiteralResourceName: "DiceOne"),
                                UIImage(imageLiteralResourceName: "DiceTwo"),
                                UIImage(imageLiteralResourceName: "DiceThree"),
                                UIImage(imageLiteralResourceName: "DiceFour"),
                                UIImage(imageLiteralResourceName: "DiceFive"),
                                UIImage(imageLiteralResourceName: "DiceSix")][leftDiceNumber]
        leftDiceNumber = leftDiceNumber + 1
        
        diceImageView2.image = [UIImage(imageLiteralResourceName: "DiceOne"),
                                UIImage(imageLiteralResourceName: "DiceTwo"),
                                UIImage(imageLiteralResourceName: "DiceThree"),
                                UIImage(imageLiteralResourceName: "DiceFour"),
                                UIImage(imageLiteralResourceName: "DiceFive"),
                                UIImage(imageLiteralResourceName: "DiceSix")][rightDiceNumber]
        rightDiceNumber = rightDiceNumber - 1
    }
    
    
}



