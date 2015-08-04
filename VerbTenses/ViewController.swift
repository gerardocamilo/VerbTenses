//
//  ViewController.swift
//  Verb Tenses
//
//  Created by Gerardo Camilo on 7/10/15.
//  Copyright (c) 2015 ___GRCS___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblFormula: UILabel!
    @IBOutlet weak var lblExample: UILabel!
    var tempRandomNumber = 0
    var myDeck:Deck = Deck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateNextTense()
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event?.subtype == UIEventSubtype.MotionShake {
            generateNextTense()
        }
    }
    
    @IBAction func generateAction(sender: AnyObject) {
        generateNextTense()
    }
    
    func generateNextTense() {
        
        let card: Dictionary<String, String> = self.myDeck.getRandomCard()
        
        lblTitle.text = card["title"]
        lblFormula.text = card["formula"]
        lblExample.text = card["example"]

    }

    @IBAction func clearFields(sender: AnyObject) {
        lblTitle.text = String()
        lblFormula.text = ""
        lblExample.text = String("")
        //LOL
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

