//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dixon A on 19/06/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    var bmi : BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        var bmiValue = weight / pow(height, 2)
        let colorWhite = UIColor(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
        let colorRed = UIColor(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        let colorBlue = UIColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
            if bmiValue < 18.5 {
                bmi = BMI(value: bmiValue, advice: "Eat more pie!", color: colorWhite)
            }
            else if bmiValue < 24.9	 {
                bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: colorBlue)
            } else {
                bmi = BMI(value: bmiValue, advice: "Eat less iDiot!", color: colorRed)
            }
        }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    func getBMIValue() -> String {
        let bmiValueRounded = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValueRounded
        
    }
    
}


