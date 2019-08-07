//
//  ViewController.swift
//  AAFlashingLabel
//
//  Created by Saad Albasha on 5/31/16.
//  Copyright © 2016 AaoIi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: FlashingLabel!
    @IBOutlet var firstTextField: UITextField!
    @IBOutlet var secondTextField: UITextField!
    @IBOutlet var flipStringButton: UIButton!
    @IBOutlet var flipAttributedStringTextButton: UIButton!
    @IBOutlet var durationTextField: UITextField!

    @IBAction func flipString(_ sender: AnyObject) {
        self.view.endEditing(true)
        
        if firstTextField.text! == "" || secondTextField.text! == "" || durationTextField.text! == ""{
            return
        }
        
        myLabel.startFlippingText(firstTextField.text!, label2Text: secondTextField.text!, duration: TimeInterval(durationTextField.text!)!)
        
        
        self.flipStringButton.isEnabled = false
        self.flipAttributedStringTextButton.isEnabled = false
        self.flipStringButton.alpha = 0.5
        self.flipAttributedStringTextButton.alpha = 0.5
    }

    @IBAction func flipAttributedString(_ sender: AnyObject) {
        self.view.endEditing(true)

        if firstTextField.text! == "" || secondTextField.text! == "" || durationTextField.text! == ""{
            return
        }
        
        let fullAirlineName = "\(firstTextField.text!)"
        let airlineIataAndFlightNumber = "\(firstTextField.text!)"
        let finalAttributedText = NSMutableAttributedString(string:fullAirlineName as String)
        finalAttributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.black, range: NSMakeRange(0,fullAirlineName.count-airlineIataAndFlightNumber.count))
        finalAttributedText.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 17), range: NSMakeRange(0,fullAirlineName.count-airlineIataAndFlightNumber.count))
        finalAttributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: NSMakeRange((fullAirlineName.count-airlineIataAndFlightNumber.count),airlineIataAndFlightNumber.count))
        finalAttributedText.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 17), range: NSMakeRange((fullAirlineName.count-airlineIataAndFlightNumber.count),airlineIataAndFlightNumber.count))
        
        
        let fullAirlineName1 = "\(secondTextField.text!)"
        let airlineIataAndFlightNumber1 = "\(secondTextField.text!)"
        let finalAttributedText1 = NSMutableAttributedString(string:fullAirlineName1 as String)
        finalAttributedText1.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.black, range: NSMakeRange(0,fullAirlineName1.count-airlineIataAndFlightNumber1.count))
        finalAttributedText1.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 17), range: NSMakeRange(0,fullAirlineName1.count-airlineIataAndFlightNumber1.count))
        finalAttributedText1.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSMakeRange((fullAirlineName1.count-airlineIataAndFlightNumber1.count),airlineIataAndFlightNumber1.count))
        finalAttributedText1.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 17), range: NSMakeRange((fullAirlineName1.count-airlineIataAndFlightNumber1.count),airlineIataAndFlightNumber1.count))
        
        myLabel.startFlippingText(finalAttributedText, label2AttributedText: finalAttributedText1, duration: TimeInterval(durationTextField.text!)!)
        
        self.flipStringButton.isEnabled = false
        self.flipAttributedStringTextButton.isEnabled = false
        self.flipStringButton.alpha = 0.5
        self.flipAttributedStringTextButton.alpha = 0.5
    }
    
    @IBAction func stopFlipping(_ sender: AnyObject) {
        
        myLabel.stopFlippingText()
        
        self.flipStringButton.isEnabled = true
        self.flipAttributedStringTextButton.isEnabled = true
        self.flipStringButton.alpha = 1.0
        self.flipAttributedStringTextButton.alpha = 1.0
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }

}

