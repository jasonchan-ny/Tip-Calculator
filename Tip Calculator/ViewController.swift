//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Jason  Chan on 12/20/20.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any)
    {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any)
    {
        // get bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        // calculate tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        // update tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
            //tipPercentageLabel.text = "$\(tip)"
        totalLabel.text = String(format: "$%.2f", total)
            //totalLabel.text = "$\(total)"
    }
    

}
