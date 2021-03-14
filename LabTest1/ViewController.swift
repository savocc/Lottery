//
//  ViewController.swift
//  LabTest1
//
//  Created by Marina Savochkina on 09.02.2021.
//

import UIKit

class ViewController: UIViewController {

    var labels: [UILabel] { return [n1, n2, n3, n4, n5, n6] }

    override func viewDidLoad() {
        super.viewDidLoad()
     }
    
    func randomInt(max: Int)-> Int{
        let rand: Int = Int(arc4random())
        return(rand % max) + 1
        
    }
    
    func randomNum() -> Int{
        let max: Int = 65
        let random =  randomInt(max: max)
        return random
    }
    
    @IBOutlet weak var n1: UILabel!
    
    @IBOutlet weak var n2: UILabel!
    
    @IBOutlet weak var n3: UILabel!
    
    @IBOutlet weak var n4: UILabel!
    
    @IBOutlet weak var n5: UILabel!
    
    @IBOutlet weak var n6: UILabel!
    
    @IBAction func draw(_ sender: Any) {
        
    var randoms = [Int]()
        
        for i in 0...5 {
            var rand = randomNum()
            while randoms.contains(rand) {
                rand  = randomNum()
            }
            randoms.append(rand)
            labels[i].text = String(rand)
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        for label in labels {
            label.text = "-"
        }
    }
    
}

