//
//  SettingsViewController.swift
//  Tip Percentage2
//
//  Created by Erin Byrd on 1/5/21.
//

import UIKit

class SettingsViewController: UIViewController
{
    
    
    @IBOutlet weak var defaultTipPercent: UILabel!
    @IBOutlet weak var defaultTipField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green

        // Do any additional setup after loading the view.
        
        self.title = "Tip Calculator"
        defaultTipPercent.textColor = UIColor.purple
    }
    
    @IBAction func saveButton(_ sender: UIButton)
    {
        let save = Double(defaultTipField.text!) ?? 0
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
