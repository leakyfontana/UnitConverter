//
//  ViewController.swift
//  UnitConverter
//
//  Created by Xander Dyer on 12/23/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var tempText2: UITextField!
    @IBOutlet weak var resultLabel2: UILabel!
    @IBOutlet weak var tempText3: UITextField!
    @IBOutlet weak var tempText4: UITextField!
    @IBOutlet weak var resultLabel3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func convertTemp(_ sender: Any) {
        
        guard let tempString = tempText.text
        else {return}
        
        if let farenheit = Double(tempString)
        {
            let celsius = (farenheit - 32 / 1.8)
            let resultText = "Celsius \(celsius)"
            resultLabel.text = resultText
        }
        
    }
    @IBAction func convertTemp2(_ sender: Any) {
        
        guard let tempString = tempText2.text
        else {return}
        
        if let celsius = Double(tempString)
        {
            let farenheit = (celsius * 1.8 + 32)
            let resultText = "Farenheit \(farenheit)"
            resultLabel2.text = resultText
        }
    }
    @IBAction func convertTemp3(_ sender: Any) {
        
        if tempText4.text == "" {
            guard let tempString = tempText3.text
            else {return}
            
            if let farenheit = Double(tempString)
            {
                let kelvin = (((farenheit - 32) * (5/9)) + 273.15)
                let resultText = "Kelvin \(kelvin)"
                resultLabel3.text = resultText
            }
        }
        if tempText3.text == "" {
            guard let tempString = tempText4.text
            else {return}
            
            if let celsius = Double(tempString)
            {
                let kelvin = (celsius + 273.15)
                let resultText = "Kelvin \(kelvin)"
                resultLabel3.text = resultText
            }
        }
    }
    

}

