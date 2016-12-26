//
//  ViewController.swift
//  Temperature Calculator
//
//  Created by Sebastian Lange on 21.12.16.
//  Copyright © 2016 Sebastian Lange. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFieldInput: UITextField!
    @IBOutlet var laCelsius: UILabel!
    @IBOutlet var laFahrenheit: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnPressed(_ sender: UIButton) {
        var celsiusOutput = 0.0
        var fahrenheitOutput = 0.0
        var inputValue = 0.0
        
        let textFieldValue = NSString(string: textFieldInput.text!)
        inputValue = textFieldValue.doubleValue
        
        celsiusOutput = (inputValue - 32) * 5 / 9
        fahrenheitOutput = inputValue * 1.8 + 32
        
        laCelsius.text = NSString(format:"%3.2f", celsiusOutput) as String
        laFahrenheit.text = NSString(format:"%3.2f", fahrenheitOutput) as String
    }
}

