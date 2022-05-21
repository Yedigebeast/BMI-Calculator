//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Yedige Ashirbek on 21.05.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightNumber: UILabel!
    @IBOutlet weak var weightNumber: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        heightNumber.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weightNumber.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let BMI = weight / (height * height)
        
        print(height)
        print(weight)
        print(BMI)
    }
    
    
}

