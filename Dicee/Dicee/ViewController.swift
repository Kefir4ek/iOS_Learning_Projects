//
//  ViewController.swift
//  Dicee
//
//  Created by Евгений Оводков on 24/03/2019.
//  Copyright © 2019 Евгений Оводков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        rollButton.layer.cornerRadius = 20
        rollButton.layer.borderWidth = 1
        rollButton.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        rollButton.layer.shadowRadius = 10
        rollButton.layer.shadowOpacity = 1
        
        diceImageView1.layer.shadowRadius = 10
        diceImageView1.layer.shadowOpacity = 1
        diceImageView2.layer.shadowRadius = 10
        diceImageView2.layer.shadowOpacity = 1
        
        
        updateDiceImages()
        
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        animateDice1()
        animateDice2()
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
        animateDice1()
        animateDice2()
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int.random (in: 0 ... 5)
        randomDiceIndex2 = Int.random (in: 0 ... 5)
        
        diceImageView1.image = UIImage (named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage (named: diceArray[randomDiceIndex2])
    }
    
    func animateDice1() {
        
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: diceImageView1.center.x - 10, y: diceImageView1.center.y + 5))
        animation.toValue = NSValue(cgPoint: CGPoint(x: diceImageView1.center.x + 10, y: diceImageView1.center.y - 5))
        
        diceImageView1.layer.add(animation, forKey: "position")
        
    }
    
    func animateDice2() {
        
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: diceImageView2.center.x - 10, y: diceImageView2.center.y - 5))
        animation.toValue = NSValue(cgPoint: CGPoint(x: diceImageView2.center.x + 10, y: diceImageView2.center.y + 5))
        
        diceImageView2.layer.add(animation, forKey: "position")
        
    }

}

