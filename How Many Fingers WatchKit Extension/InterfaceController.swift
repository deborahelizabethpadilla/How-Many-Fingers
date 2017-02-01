//
//  InterfaceController.swift
//  How Many Fingers WatchKit Extension
//
//  Created by Deborah on 1/31/17.
//  Copyright © 2017 Deborah. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var guess: WKInterfaceSlider!
    @IBOutlet var guessLabel: WKInterfaceLabel!
    @IBOutlet var resultLabel: WKInterfaceLabel!
    
    var guessNumber:Int = 3
    
    @IBAction func guessUpdated(_ value: Float) {
        
        guessNumber = Int(value * 5)
        guessLabel.setText("Your Guess: \(guessNumber)")
    }
    
    @IBAction func guessPress() {
        var randomNumber = Int(arc4random_uniform(6))
        
        if randomNumber == guessNumber {
            resultLabel.setText("Correct!")
        } else {
            resultLabel.setText("Wrong! It was a \(randomNumber)")
        }
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
