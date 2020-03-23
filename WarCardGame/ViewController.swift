//
//  ViewController.swift
//  WarCardGame
//
//  Created by madi on 3/22/20.
//  Copyright © 2020 madi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var CPUScoreLabel: UILabel!
    
    
    
    var playerScore = 0
    var CPUScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
              
        //randomly draw player card
        leftImageView.image = UIImage(named:"\(leftNumber)")
        
        //randomly draw cpu card
        rightImageView.image = UIImage(named: "\(rightNumber)")
        
        //see who wins and give them points
        if leftNumber > rightNumber {
            playerScore += 1
            playerScoreLabel.text = "\(playerScore)"
        } else if rightNumber > leftNumber {
            CPUScore += 1
            CPUScoreLabel.text = "\(CPUScore)"
        } else {
            playerScore += 1
            CPUScore += 1
            playerScoreLabel.text = "\(playerScore)"
            CPUScoreLabel.text = "\(CPUScore)"
        }
      
    }
    
    
    @IBAction func resetTapped(_ sender: Any) {
        
        //set cards back to default card back
        leftImageView.image = UIImage(named:"card_back")
        
        rightImageView.image = UIImage(named: "card_back")
        
        //set scores back to 0
        playerScore = 0
        CPUScore = 0
        playerScoreLabel.text = "\(playerScore)"
        CPUScoreLabel.text = "\(CPUScore)"
        
    }
    


}

