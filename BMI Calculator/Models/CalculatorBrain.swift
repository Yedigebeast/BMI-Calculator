//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Yedige Ashirbek on 23.05.2022.
//

import UIKit

struct CalculatorBrain {
    
    var BMIValue: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = weight / (height * height)
        let color = [#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)]
        
        if bmi < 18.5 {
            BMIValue = BMI(value: bmi, advice: "Eat more pies!", color: color[0])
        }else if bmi < 24.9 {
            BMIValue = BMI(value: bmi, advice: "Fit as a fiddle!", color: color[1])
        }else{
            BMIValue = BMI(value: bmi, advice: "Eat less pies!", color: color[2])
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", BMIValue?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return BMIValue?.advice ?? "No Advice"
    }

    func getColor() -> UIColor {
        return BMIValue?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
