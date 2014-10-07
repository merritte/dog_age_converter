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
        
        if optionalDoubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (optionalDoubleFromTextField - 2) * 4
        }
        else {
            realDogYears = optionalDoubleFromTextField * 10.5
        }
        
        dogYearsLabel.text = "\(realDogYears)"
        dogYearsLabel.hidden = false
        enterHumanYearsTextField.resignFirstResponder()
        
    }
}



//
//    @IBAction func dogAgePressed(sender: AnyObject) {
//        let stringFromTextField = dogAgeTextField.text
//        let optionalIntFromTextField = stringFromTextField.toInt()
//        let intFromOptional = optionalIntFromTextField!
//
//
//        if int
//        dogYearsLabel.text = "\(intFromOptional * 7)"
//        dogYearsLabel.hidden = false
//        dogAgeTextField.resignFirstResponder()
//    }
