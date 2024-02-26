//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var countRolls:Int = 0
    var leftDiceNumber:Int = 0
    var rightDiceNumber:Int = 0
    @IBOutlet weak var LlabelNumber: UILabel!
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    //1
    //2
    //3
    	
    override func viewDidLoad() {
        super.viewDidLoad()
        

      
        
    }
    
    
    @IBAction func buttonFlipp(_ sender: UIButton) {
        countRolls += 1
        
        
        let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"),
                                UIImage(imageLiteralResourceName: "DiceTwo"),
                                UIImage(imageLiteralResourceName: "DiceThree"),
                                UIImage(imageLiteralResourceName: "DiceFour"),
                                UIImage(imageLiteralResourceName: "DiceFive"),
                                UIImage(imageLiteralResourceName: "DiceSix")]

        leftDiceNumber = Int.random(in: 0...5)
        diceImageView1.image = diceArray[leftDiceNumber]
        
        rightDiceNumber = Int.random(in: 0...5)
        diceImageView2.image = diceArray[rightDiceNumber]
        
        if leftDiceNumber==rightDiceNumber{
            LlabelNumber.text = "Congrats!!! You get a pair of \(rightDiceNumber+1)"
        }
        else{
            LlabelNumber.text = "You rolled " + String(countRolls) + " time/s"
        }
    }
    

    
    
    @IBAction func restartDices(_ sender: UIButton) {
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceOne")
        countRolls = 0
        leftDiceNumber = 1
        rightDiceNumber = 5
        LlabelNumber.text = "Let`s roll them UP!"
    }
}



