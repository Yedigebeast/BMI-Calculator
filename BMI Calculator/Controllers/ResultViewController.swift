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
    
    var BMIValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultBMI.text = BMIValue
        
    }
    
    
    @IBAction func recalculateButton(_ sender: UIButton) {
            
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
