//
//  ViewController.swift
//  Laika Age
//
//  Created by Merritte on 10/5/14.
//  Copyright (c) 2014 Merritte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogAgeTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dogAgePressed(sender: AnyObject) {
        let stringFromTextField = dogAgeTextField.text
        let optionalIntFromTextField = stringFromTextField.toInt()
        let intFromOptional = optionalIntFromTextField!
        
        dogYearsLabel.text = "\(intFromOptional * 7)"
        dogYearsLabel.hidden = false
        dogAgeTextField.resignFirstResponder()
    }

}

