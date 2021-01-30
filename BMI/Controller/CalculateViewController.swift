//
//  ViewController.swift
//  BMI
//
//  Created by Tim Irrgang on 27.01.21.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    
    
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
       
      
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        weightLabel.text = String("\(weight)Kg")
        
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI(heigth: heightSliderOutlet.value, weigth: weightSliderOutlet.value)
        
       
    
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
      
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.adviceValue = calculatorBrain.getBMIAdvice()
            destinationVC.colorValue = calculatorBrain.getBMIColor()
        }
    }
    
}

