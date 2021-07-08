//
//  ViewController.swift
//  pokerCardGame
//
//  Created by chao on 2021/7/8.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftPicView: UIImageView!
    
    @IBOutlet weak var rightPicView: UIImageView!
    
    
    @IBOutlet weak var leftScoreView: UILabel!
    
    @IBOutlet weak var rightScoreView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var leftScore = 0
    var rightScore = 0
    
    @IBAction func bottonTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...10)
        let rightNumber = Int.random(in: 2...10)
        leftPicView.image = UIImage(named: "\(leftNumber)")
        rightPicView.image = UIImage(named: "\(rightNumber)")
        
        if leftNumber > rightNumber {
            //left side player wins
            leftScore += 1
            leftScoreView.text = String(leftScore)
        }else if rightNumber > leftNumber{
            //right side computer wins
            rightScore += 1
            rightScoreView.text = String(rightScore)
        }else{
            //it's a tie, so do nothing here
            
        }
        
        
    }
    
    
}

