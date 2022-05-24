//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Yedige Ashirbek on 22.05.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultBMI: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet var resultBackground: UIView!
    
    
    var BMIValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultBMI.text = BMIValue
        adviceLabel.text = advice
        resultBackground.backgroundColor = color
        
    }
    
    
    @IBAction func recalculateButton(_ sender: UIButton) {
            
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
