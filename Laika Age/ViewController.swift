//
//  ViewController.swift
//  Laika Age
//
//  Created by Merritte on 10/5/14.
//  Copyright (c) 2014 Merritte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var dogYearsLabel: UILabel!
    
    @IBOutlet weak var enterHumanYearsTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text
        let optionalDoubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        var realDogYears:Double
        
        if optionalDoubleFromTextField <= 1 {
            realDogYears = optionalDoubleFromTextField * 16
        }
        else  if optionalDoubleFromTextField <= 2 {
            realDogYears = ((optionalDoubleFromTextField - 1) * 8 + 16)
        }
        else {
            realDogYears = ((optionalDoubleFromTextField - 2) * 4 + 24)
        }

        
        dogYearsLabel.text = "\(realDogYears)"
        dogYearsLabel.hidden = false
        enterHumanYearsTextField.resignFirstResponder()
        
    }
}


// if optionalDoubleFromTextField > 2 {
//    realDogYears = (10.5 * 2) + (optionalDoubleFromTextField - 2) * 4
// }
//    
// else {
//    realDogYears = optionalDoubleFromTextField * 10.5
// }
//
// dogYearsLabel.text = "\(realDogYears)"
// dogYearsLabel.hidden = false
// enterHumanYearsTextField.resignFirstResponder()