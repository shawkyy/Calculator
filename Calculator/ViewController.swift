//
//  ViewController.swift
//  Calculator
//
//  Created by shawky on 7/16/19.
//  Copyright © 2019 shawky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    let formatter = NumberFormatter()


    
    var firstNumberEntered:Double = 0
    var secondNumberEntered:Double = 0
    var result:Double = 0
    var performMath = false
    var operation = 0
    
    
    
    
    @IBOutlet weak var displayLabel: UILabel!
    

    // MARk: numbers buttons
    
    @IBAction func dotButtonPressed(_ sender: UIButton) {
        
        if performMath == true {
            
            displayLabel.text = "."
            
            secondNumberEntered = Double(displayLabel.text!)!
            
            performMath = false
        }
            
        else {
            
            
            displayLabel.text?.append(".")
            
            secondNumberEntered = Double(displayLabel.text!)!
            
        }
        
    }
    
    
    
    @IBAction func numberTapped(_ sender: UIButton) {

         sender.showsTouchWhenHighlighted = true
        
        
        if performMath == true {

            displayLabel.text = String(sender.tag)

            secondNumberEntered = Double(displayLabel.text!)!

            performMath = false
        }

        else {


        displayLabel.text?.append("\(sender.tag)")

        secondNumberEntered = Double(displayLabel.text!)!

        }
    
    
    }
    
    // MARK: operation choice
    
    
    @IBAction func operationsButtons(_ sender: UIButton) {
      
        
        guard let value = displayLabel.text, !value.isEmpty else {return}
        
        sender.showsTouchWhenHighlighted = true
        
        switch sender.tag {
        
        case 11: // plus
           
            performMath = true
        
            firstNumberEntered = Double(displayLabel.text!)!
      
            operation = 11
       
        case 12: // minus
            
            performMath = true
            
            firstNumberEntered = Double(displayLabel.text!)!
            
            operation = 12
        
        case 13: //multiply
        
            performMath = true
       
            firstNumberEntered = Double(displayLabel.text!)!
            
            operation = 13
        case 14: //divided
        
            performMath = true
           
            firstNumberEntered = Double(displayLabel.text!)!

            operation = 14
      
        case 15: //backSpace
            
            displayLabel.text?.removeLast()
        
        case 16: //reset
            
            displayLabel.text?.removeAll()
            
            firstNumberEntered = 0
            
            secondNumberEntered = 0
        
        
        default:
            break
        }
    
        
        if sender.tag == 17 {

    
            formatter.minimumFractionDigits = 0
           
            
            switch operation {
            
            case 11: // plus
             
                result = firstNumberEntered + secondNumberEntered
             
                displayLabel.text = String(result)
            
            case 12: // minus
            
                result = firstNumberEntered - secondNumberEntered
                
                displayLabel.text = String(result)
           
            case 13:  //multiply
              
                result = firstNumberEntered * secondNumberEntered
                
                displayLabel.text = String(result)
            
            case 14: //divided
            
                result = firstNumberEntered / secondNumberEntered
                
                displayLabel.text = String(result)
            default:
                
                break
            }
           
        }
    
    
    

}
    


}
