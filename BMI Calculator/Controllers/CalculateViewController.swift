//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Yedige Ashirbek on 21.05.2022.
//

import UIKit

class CalculateViewController: UIViewController {

    
    @IBOutlet weak var heightNumber: UILabel!
    @IBOutlet weak var weightNumber: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var BMI: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        heightNumber.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weightNumber.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.BMIValue = String(format: "%.1f", BMI)
        }
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        BMI = weight / (height * height)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    
}

