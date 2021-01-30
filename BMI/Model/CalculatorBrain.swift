//
//  CalculatorBrain.swift
//  BMI
//
//  Created by Tim Irrgang on 28.01.21.
//

import UIKit

 struct CalculatorBrain {
    var bmi: BMI?

    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0)
    }
    func getBMIColor() -> UIColor {
        return bmi?.color ?? .blue
    }
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "ERROR"
    }

    mutating func calculateBMI(heigth:Float, weigth:Float)  {
        let bmiValue = weigth / (heigth * heigth)
       
        
        if bmiValue < 18.5 {
            //Untergewicht
            bmi = BMI(value: bmiValue, advice: "Untergewicht", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))

        } else if bmiValue < 24.9 {
            //Normal
            bmi = BMI(value: bmiValue, advice: "Perfekt", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else{
            // Übergewicht
            bmi = BMI(value: bmiValue, advice: "Übergewicht", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
    }
}
