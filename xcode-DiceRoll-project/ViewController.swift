//
//  ViewController.swift
//  xcode-DiceRoll-project
//
//  Created by Nargiz on 8/24/20.
//  Copyright © 2020 nargizhus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        //1. I'm gonna create two variables here for random function in order to randomly selection.
        //We choose 6 because we have max 6 dice images.
        let firstNumber = arc4random_uniform(6) + 1
        let secondNumber = arc4random_uniform(6) + 1
    
    // 2. that references to the label that we've added. It'll calculate the final result for our dice
        label.text = "The sum is: \(firstNumber + secondNumber)"
    //3. This will let you change images. We're gonna create a new UIImage object. UIImage object has an initializer called (named: String)
        leftImageView.image = UIImage(named: "Dice\(firstNumber)")
        rightImageView.image = UIImage(named: "Dice\(secondNumber)")
    
    
    }
}

