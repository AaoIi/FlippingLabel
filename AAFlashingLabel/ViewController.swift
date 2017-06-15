//
//  ViewController.swift
//  AAFlashingLabel
//
//  Created by Saad Albasha on 5/31/16.
//  Copyright © 2016 AaoIi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: AAFlashingLabel!
    @IBOutlet var firstTextField: UITextField!
    @IBOutlet var secondTextField: UITextField!
    @IBOutlet var flipStringButton: UIButton!
    @IBOutlet var flipAttributedStringTextButton: UIButton!
    @IBOutlet var durationTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func flipString(_ sender: AnyObject) {
        self.view.endEditing(true)
        
        if firstTextField.text! == "" || secondTextField.text! == "" || durationTextField.text! == ""{
            return
        }
        
        myLabel.startFlippingLabels(firstTextField.text!, label2Text: secondTextField.text!, duration: TimeInterval(durationTextField.text!)!)
        
        
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
        finalAttributedText.addAttribute(NSForegroundColorAttributeName, value: UIColor.black, range: NSMakeRange(0,fullAirlineName.characters.count-airlineIataAndFlightNumber.characters.count))
        finalAttributedText.addAttribute(NSFontAttributeName, value: UIFont.systemFont(ofSize: 17), range: NSMakeRange(0,fullAirlineName.characters.count-airlineIataAndFlightNumber.characters.count))
        finalAttributedText.addAttribute(NSForegroundColorAttributeName, value: UIColor.blue, range: NSMakeRange((fullAirlineName.characters.count-airlineIataAndFlightNumber.characters.count),airlineIataAndFlightNumber.characters.count))
        finalAttributedText.addAttribute(NSFontAttributeName, value: UIFont.systemFont(ofSize: 17), range: NSMakeRange((fullAirlineName.characters.count-airlineIataAndFlightNumber.characters.count),airlineIataAndFlightNumber.characters.count))
        
        
        let fullAirlineName1 = "\(secondTextField.text!)"
        let airlineIataAndFlightNumber1 = "\(secondTextField.text!)"
        let finalAttributedText1 = NSMutableAttributedString(string:fullAirlineName1 as String)
        finalAttributedText1.addAttribute(NSForegroundColorAttributeName, value: UIColor.black, range: NSMakeRange(0,fullAirlineName1.characters.count-airlineIataAndFlightNumber1.characters.count))
        finalAttributedText1.addAttribute(NSFontAttributeName, value: UIFont.systemFont(ofSize: 17), range: NSMakeRange(0,fullAirlineName1.characters.count-airlineIataAndFlightNumber1.characters.count))
        finalAttributedText1.addAttribute(NSForegroundColorAttributeName, value: UIColor.red, range: NSMakeRange((fullAirlineName1.characters.count-airlineIataAndFlightNumber1.characters.count),airlineIataAndFlightNumber1.characters.count))
        finalAttributedText1.addAttribute(NSFontAttributeName, value: UIFont.systemFont(ofSize: 17), range: NSMakeRange((fullAirlineName1.characters.count-airlineIataAndFlightNumber1.characters.count),airlineIataAndFlightNumber1.characters.count))
        
        myLabel.startFlippingLabels(finalAttributedText, label2AttributedText: finalAttributedText1, duration: TimeInterval(durationTextField.text!)!)
        
        self.flipStringButton.isEnabled = false
        self.flipAttributedStringTextButton.isEnabled = false
        self.flipStringButton.alpha = 0.5
        self.flipAttributedStringTextButton.alpha = 0.5
    }
    @IBAction func stopFlipping(_ sender: AnyObject) {
        
        
        myLabel.stopFlippingLabels()
        
        self.flipStringButton.isEnabled = true
        self.flipAttributedStringTextButton.isEnabled = true
        self.flipStringButton.alpha = 1.0
        self.flipAttributedStringTextButton.alpha = 1.0
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }

}

