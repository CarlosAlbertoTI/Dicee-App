//
//  ViewController.swift
//  Dicee App
//
//  Created by Carlos on 02/09/19.
//  Copyright © 2019 Carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let count = ["number1","number2","number3","number4","number5","number6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var viewResut: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UpdatePhotos()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        UpdatePhotos()
    }
    
    func UpdatePhotos(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        if(randomDiceIndex2 > randomDiceIndex1){
            viewResut.text = "The first player won"
        }else if(randomDiceIndex2 < randomDiceIndex1){
            viewResut.text = "The second player won"
        }else{
            viewResut.text = "Any player won"
        }
        
        diceImageView1.image = UIImage(named: count[randomDiceIndex2])
        diceImageView2.image = UIImage(named: count[randomDiceIndex1])
    }
}

