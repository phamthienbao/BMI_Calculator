//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class calculateViewController: UIViewController {

   
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var bmiResults = 0.0
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightValue = Double(sender.value)
        weightLabel.text = "\(weightValue.rounded())Kg"
        
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
       let  heightValue = Double(sender.value)
        
       // heightLabel.text = " \(heightValue.roundto) + m"
        heightLabel.text =  "\(String(format:"%.1f",(heightValue)))m"

    }
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        let weightValue = weightSlider.value
        let heightValue = heightSlider.value
        bmiResults = Double(weightValue) / Double(pow(heightValue, 2))
       // print(bmiResults)
        let resultsView = SecondViewController()
        resultsView.bmiResult = bmiResults
        self.present(resultsView, animated: true, completion: nil)
    }
    
}

