//
//  FlashingLabel.swift
//  FlashingLabel
//
//  Created by Saad Albasha on 5/31/16.
//  Copyright © 2016 AaoIi. All rights reserved.
//

import UIKit

public class FlashingLabel : UILabel {
    
    //variables
    private var titleForLabel1 : String?
    private var titleForLabel2 : String?
    private var titleForLabel1Attributed : NSMutableAttributedString?
    private var titleForLabel2Attributed : NSMutableAttributedString?
    
    private var duration : TimeInterval!
    private var currentLabel = 0
    private var timer : Timer!
    private var isAttributed = false
    private let animationDuration : Double = 0.3
    
    //MARK:- Core
    
    /**
     This method will flip two string on label.
     - parameter label1Text: is the first appearing string to flip.
     - parameter label2Text: is the second appearing string to flip.
     - returns: nothing.
     - author: Saad Albasha.
     */
    public func startFlippingText(firstText:String?,secondText:String?,duration:TimeInterval){
        
        self.titleForLabel1 = firstText
        self.titleForLabel2 = secondText
        self.duration = duration
        
        setLabel1TextAnimated()
        isAttributed = false
        
        self.startTimer()
    }
    
    /**
     This method will flip two attributed string on label.
     - parameter label1Text: is the first appearing attributed string to flip.
     - parameter label2Text: is the second appearing attributed string to flip.
     - returns: nothing.
     - author: Saad Albasha.
     */
    public func startFlippingText(firstAttributedText:NSMutableAttributedString,secondAttributedText:NSMutableAttributedString,duration:TimeInterval){
        
        self.titleForLabel1Attributed = firstAttributedText
        self.titleForLabel2Attributed = secondAttributedText
        self.duration = duration
        
        setLabel1TextAnimated()
        isAttributed = true
        
        self.startTimer()
    }
    
    /**
     This method will stop flipping label.
     - returns: nothing.
     - author: Saad Albasha.
     */
    public func stopFlippingText(){
        
        if self.stopTimer() {
            
            // Reset to first text
            currentLabel = 0
            self.setLabel1TextAnimated()
            
        }
        
    }
    
    //MARK:- Execution section
    
    private func startTimer(){
        
        timer = Timer.scheduledTimer(timeInterval: duration, target: self, selector: #selector(self.executeFlipping(_:)), userInfo: nil, repeats: true)
        timer.fire()
        
    }
    
    private func stopTimer()->Bool{
        
        guard timer == nil else {
            timer.invalidate()
            timer = nil
            return true
        }
        
        return false
    }
    
    @objc
    private func executeFlipping(_ timer:Timer){
        
        if currentLabel == 0 {
            
            // show label 1 text
            setLabel1TextAnimated()
            
            currentLabel += 1
            
        }else{
            
            // show label 2 text
            setLabel2TextAnimated()
            
            currentLabel -= 1
        }
        
    }
    
    //MARK:- Animation
    
    private func setLabel2TextAnimated(){
        
        self.alpha = 0
        
        UIView.animateKeyframes(withDuration: animationDuration, delay: 0.0, options: [], animations: {
            
            self.alpha = 1
            
            if self.isAttributed == false {
                
                self.text = self.titleForLabel2
                
            }else {
                
                //* attributedText
                self.attributedText = self.titleForLabel2Attributed
                
            }
            
        }, completion: nil)
        
        
    }
    
    private func setLabel1TextAnimated(){
        
        self.alpha = 0
        
        UIView.animateKeyframes(withDuration: animationDuration, delay: 0.0, options: [], animations: {
            
            self.alpha = 1
            if self.isAttributed == false {
                
                self.text = self.titleForLabel1
                
            }else {
                
                //* attributedText
                self.attributedText = self.titleForLabel1Attributed
            }
            
        }, completion: nil)
    }
    
    
}
