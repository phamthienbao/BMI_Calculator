//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by BAO PHAM on 1/29/21.
//  Copyright © 2021 BAO PHAM. All rights reserved.
//

import UIKit

struct CalculateBrain {
    var bmi: BMI?
    //var bmiVal: Float = 0.0
    func getBMI() -> String {
        let bmiVal = String(format: "%.2f", bmi?.bmiValue ?? 0.0)
        return bmiVal
    }
    
    func getAdvice() -> String {
        let adviceBMI = bmi?.bmiAdvice ?? "No data"
        return adviceBMI
    }
    
    func getColor() -> UIColor {
        let colorTemp = bmi?.bmiColor ?? UIColor.white
        return colorTemp
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiTemp = weight / (height * height)
        let color: UIColor
        let advice: String
        if bmiTemp  < 18.5 {
            color = UIColor.red
            advice = "Underweight"
        } else if bmiTemp > 24.9 {
            color = UIColor.blue
            advice = "Overweight"
        } else {
            color = UIColor.green
            advice = "Normal"
        }
        bmi = BMI(bmiValue: bmiTemp, bmiAdvice: advice, bmiColor: color)
        //print(bmi)
        //bmi = bmiVal
        //bmi = BMI(bmiValue: bmiVal, bmiAdvice:"Test", bmiColor: UIColor.red )
        //return bmi
    }
    
}

