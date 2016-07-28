//
//  AAFlashingLabel.swift
//  AAFlashingLabel
//
//  Created by Saad Albasha on 5/31/16.
//  Copyright © 2016 AaoIi. All rights reserved.
//

import UIKit

class AAFlashingLabel : UILabel {
    
    private var titleForLabel1 : String!
    private var titleForLabel2 : String!
    private var titleForLabel1Attributed : NSMutableAttributedString!
    private var titleForLabel2Attributed : NSMutableAttributedString!
    private var duration : NSTimeInterval!
    private var currentLabel = 0
    private var timer : NSTimer!
    private var attributedTextFlag = false
    
    /**
     This method will flip two string on label.
     - parameter label1Text: is the first appearing string to flip.
     - parameter label2Text: is the second appearing string to flip.
     - returns: nothing.
     - author: Saad Albasha.
     */
    func startFlippingLabels(label1Text:String,label2Text:String,duration:NSTimeInterval){
        
        self.titleForLabel1 = label1Text
        self.titleForLabel2 = label2Text
        self.duration = duration
        
        setLabel1Text()
        attributedTextFlag = false
        
        timer = NSTimer.scheduledTimerWithTimeInterval(duration, target: self, selector: #selector(self.setTextForLabel(_:)), userInfo: nil, repeats: true)
        timer.fire()
        
    }
    
    /**
     This method will flip two attributed string on label.
     - parameter label1Text: is the first appearing attributed string to flip.
     - parameter label2Text: is the second appearing attributed string to flip.
     - returns: nothing.
     - author: Saad Albasha.
     */
    func startFlippingLabels(label1AttributedText:NSMutableAttributedString,label2AttributedText:NSMutableAttributedString,duration:NSTimeInterval){
        
        self.titleForLabel1Attributed = label1AttributedText
        self.titleForLabel2Attributed = label2AttributedText
        self.duration = duration
        
        setLabel1Text()
        attributedTextFlag = true
        
        timer = NSTimer.scheduledTimerWithTimeInterval(duration, target: self, selector: #selector(self.setTextForLabel(_:)), userInfo: nil, repeats: true)
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
    
    
    
    @objc private func setTextForLabel(timer:NSTimer){
        
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
    
    
    
    private func setLabel2Text(){
        
        self.alpha = 0
        UIView.animateKeyframesWithDuration(0.3, delay: 0.0, options: [], animations: {
            
            self.alpha = 1
            
            if self.attributedTextFlag == false {
                
                self.text = self.titleForLabel2
                
            }else {
                
                //* attributedText
                self.attributedText = self.titleForLabel2Attributed
                
            }
            
            }, completion: nil)
        
        
    }
    
    
    private func setLabel1Text(){
        
        self.alpha = 0
        UIView.animateKeyframesWithDuration(0.3, delay: 0.0, options: [], animations: {
            
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
