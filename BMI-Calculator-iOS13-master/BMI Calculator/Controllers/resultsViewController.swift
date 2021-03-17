//
//  resultsViewController.swift
//  BMI Calculator
//
//  Created by BAO PHAM on 1/29/21.
//  Copyright © 2021 BAO PHAM. All rights reserved.
//

import UIKit

class resultsViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmiResult : String?
    var bmiAdviceText: String?
    var bmiColorBMI: UIColor?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsLabel.text = bmiResult
        adviceLabel.text = bmiAdviceText
        self.view.backgroundColor = bmiColorBMI
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation*/
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
