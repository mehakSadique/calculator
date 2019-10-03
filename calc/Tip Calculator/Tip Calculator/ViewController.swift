//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Mehak Sadique on 10/2/19.
//  Copyright © 2019 Mehak Sadique. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billFeild: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipCalculator: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    @IBAction func calculatorTip(_ sender: Any) {
        let bill = Double (billFeild.text!) ?? 0
        
        let tipPercantages = [0.15,0.18,0.2]
        
        
        let tip = bill * tipPercantages[tipCalculator.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

