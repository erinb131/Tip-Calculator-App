//
//  ViewController.swift
//  Tip Percentage2
//
//  Created by Erin Byrd on 12/15/20.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billAmountText: UILabel!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var total: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Tip Calculator"
        
        tipPercentageLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        view.backgroundColor = UIColor.green
        
        tipPercentageLabel.textColor = UIColor.purple
        totalLabel.textColor = UIColor.purple
        billAmountText.textColor = UIColor.purple
        tip.textColor = UIColor.purple
        total.textColor = UIColor.purple
    }
    
    @IBAction func Settings(_ sender: UIBarButtonItem)
    {
    }
    
    @IBAction func onTap(_ sender: UITapGestureRecognizer)
    {
    }
    
    @IBAction func calculateTip(_ sender: UISegmentedControl)
    {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

