//
//  ResultViewController.swift
//  BMI
//
//  Created by Tim Irrgang on 27.01.21.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var adviceValue:String?
    var colorValue:UIColor?
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var bmiTextLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        background.backgroundColor = colorValue
        textLabel.text = adviceValue

    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
