//
//  ViewController.swift
//  tip
//
//  Created by Johnny on 7/31/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var percentageSlider: UISlider!
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var splitField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Get the split number
        let split = Int(splitField.text!) ?? 1
        
        // Show percentage
        let tipPercentage = Double(percentageSlider.value)
        percentageLabel.text = String(format: "%d%%", Int(tipPercentage))
        
        // Calculate tip and total
        let tip = bill * tipPercentage / 100 / Double(split)
        let total = bill / Double(split) + tip
        
        // Update tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

