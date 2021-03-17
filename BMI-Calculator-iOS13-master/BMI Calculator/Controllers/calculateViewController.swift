//
//  ViewController.swift
//  BMI Calculator
//
//  Created by BAO PHAM on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class calculateViewController: UIViewController {

   
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    //var bmiResults: BMI?
    var calculatorBrain = CalculateBrain()
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight =  String(format: "%.0f", sender.value)
         weightLabel.text = "\(weight)Kg"
        
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult" {
            let destinationVC = segue.destination as! resultsViewController
            destinationVC.bmiResult = calculatorBrain.getBMI()
            destinationVC.bmiAdviceText = calculatorBrain.getAdvice()
            destinationVC.bmiColorBMI = calculatorBrain.getColor()
            
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

    
}

