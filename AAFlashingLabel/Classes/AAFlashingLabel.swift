//
//  AAFlashingLabel.swift
//  AAFlashingLabel
//
//  Created by Saad Albasha on 5/31/16.
//  Copyright © 2016 AaoIi. All rights reserved.
//

import UIKit

class AAFlashingLabel : UILabel {
    
    fileprivate var titleForLabel1 : String!
    fileprivate var titleForLabel2 : String!
    fileprivate var titleForLabel1Attributed : NSMutableAttributedString!
    fileprivate var titleForLabel2Attributed : NSMutableAttributedString!
    fileprivate var duration : TimeInterval!
    fileprivate var currentLabel = 0
    fileprivate var timer : Timer!
    fileprivate var attributedTextFlag = false
    
    /**
     This method will flip two string on label.
     - parameter label1Text: is the first appearing string to flip.
     - parameter label2Text: is the second appearing string to flip.
     - returns: nothing.
     - author: Saad Albasha.
     */
    func startFlippingLabels(_ label1Text:String,label2Text:String,duration:TimeInterval){
        
        self.titleForLabel1 = label1Text
        self.titleForLabel2 = label2Text
        self.duration = duration
        
        setLabel1Text()
        attributedTextFlag = false
        
        timer = Timer.scheduledTimer(timeInterval: duration, target: self, selector: #selector(self.setTextForLabel(_:)), userInfo: nil, repeats: true)
        timer.fire()
        
    }
    
    /**
     This method will flip two attributed string on label.
     - parameter label1Text: is the first appearing attributed string to flip.
     - parameter label2Text: is the second appearing attributed string to flip.
     - returns: nothing.
     - author: Saad Albasha.
     */
    func startFlippingLabels(_ label1AttributedText:NSMutableAttributedString,label2AttributedText:NSMutableAttributedString,duration:TimeInterval){
        
        self.titleForLabel1Attributed = label1AttributedText
        self.titleForLabel2Attributed = label2AttributedText
        self.duration = duration
        
        setLabel1Text()
        attributedTextFlag = true
        
        timer = Timer.scheduledTimer(timeInterval: duration, target: self, selector: #selector(self.setTextForLabel(_:)), userInfo: nil, repeats: true)
        timer.fire()
        
    }
    
    /**
     This method will stop flipping label.
     - returns: nothing.
     - author: Saad Albasha.
     */
    func stopFlippingLabels(){
        
        guard timer == nil else {
            timer.invalidate()
            timer = nil
            return
        }
        //TODO: feature work is to reset label to first text.
    }
    
    
    
    @objc fileprivate func setTextForLabel(_ timer:Timer){
        
        if currentLabel == 0 {
            
            // show label 1 text
            setLabel1Text()
            
            currentLabel += 1
            
        }else{
            
            // show label 2 text
            setLabel2Text()
            
            currentLabel -= 1
        }
        
    }
    
    
    
    fileprivate func setLabel2Text(){
        
        self.alpha = 0
        UIView.animateKeyframes(withDuration: 0.3, delay: 0.0, options: [], animations: {
            
            self.alpha = 1
            
            if self.attributedTextFlag == false {
                
                self.text = self.titleForLabel2
                
            }else {
                
                //* attributedText
                self.attributedText = self.titleForLabel2Attributed
                
            }
            
            }, completion: nil)
        
        
    }
    
    
    fileprivate func setLabel1Text(){
        
        self.alpha = 0
        UIView.animateKeyframes(withDuration: 0.3, delay: 0.0, options: [], animations: {
            
            self.alpha = 1
            if self.attributedTextFlag == false {
                
                self.text = self.titleForLabel1
                
            }else {
                //* attributedText
                
                self.attributedText = self.titleForLabel1Attributed
            }
            
            }, completion: nil)
    }
    
    
}
