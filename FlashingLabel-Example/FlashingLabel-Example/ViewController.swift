//
//  ViewController.swift
//  FlashingLabel-Example
//
//  Created by Mobile build server on 8/27/19.
//  Copyright © 2019 Saad Albasha. All rights reserved.
//

import UIKit
import FlashingLabel

class ViewController: UIViewController {
    
    @IBOutlet weak var previewLabel: FlashingLabel!
    @IBOutlet var firstTextField: UITextField!
    @IBOutlet var secondTextField: UITextField!
    @IBOutlet var flipStringButton: UIButton!
    @IBOutlet var flipAttributedStringTextButton: UIButton!
    @IBOutlet var durationTextField: UITextField!
    
    var isValidToFlip : Bool {
        let flag = firstTextField.text! != "" && secondTextField.text! != "" && durationTextField.text! != ""
        return flag
    }
    
    
    //MARK:- Core
    
    @IBAction func flipString(_ sender: AnyObject) {
        self.view.endEditing(true)
        
        if !isValidToFlip {return}
        
        let duration = TimeInterval(durationTextField.text ?? "1" ) ?? 1
        
        previewLabel.startFlippingText(firstText: firstTextField.text, secondText: secondTextField.text, duration: duration)
        
        self.disableViews()
    }
    
    @IBAction func flipAttributedString(_ sender: AnyObject) {
        self.view.endEditing(true)
        
        if !isValidToFlip {return}
        
        let firstText = firstTextField.text ?? ""
        let secondText = secondTextField.text ?? ""
        
        let firstAttText = NSMutableAttributedString(string: firstText, attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue])
        
        let secondAttText = NSMutableAttributedString(string: secondText, attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])

        let duration = TimeInterval(durationTextField.text ?? "1" ) ?? 1
        
        previewLabel.startFlippingText(firstAttributedText: firstAttText, secondAttributedText: secondAttText, duration: duration)
        
        self.disableViews()

    }
    
    @IBAction func stopFlipping(_ sender: AnyObject) {
        
        previewLabel.stopFlippingText()
        
        self.flipStringButton.isEnabled = true
        self.flipAttributedStringTextButton.isEnabled = true
        self.flipStringButton.alpha = 1.0
        self.flipAttributedStringTextButton.alpha = 1.0
        
    }
    
    //MARK:- Helpers
    
    private func disableViews(){
        
        self.flipStringButton.isEnabled = false
        self.flipAttributedStringTextButton.isEnabled = false
        self.flipStringButton.alpha = 0.5
        self.flipAttributedStringTextButton.alpha = 0.5
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
}

