//
//  MyModel.swift
//  VerbTenses
//
//  Created by Gerardo Camilo on 8/2/15.
//  Copyright (c) 2015 ___GRCS___. All rights reserved.
//

import Foundation

class Deck {

    var cards = [Dictionary<String, String>]()
    var tempRandomNumber = 0
    
    init(){
        //PRESENT
        cards.append( ["title":"Present Simple", "formula":"S + VERB2 + S/ES + O/ADV", "example": "Maria works hard."] )
        
        cards.append(["title":"Present Continuous", "formula":"S + BE + VERB-ING + O/ADV", "example": "He's working hard."])
        
        
        cards.append(["title":"Present Perfect", "formula":"S + HAVE/HAS + VERB3 + O/ADV", "example": "Jeff has gotten a new job."])
        
        
        cards.append(["title":"Present Perfect Continuous", "formula":"S + HAVE/HAS + BEEN + VERB-ING + O/ADV", "example": "You have been doing great on this project."])
        
        //PAST
        cards.append(["title":"Simple Past", "formula":"S + VERB2 + O/ADV", "example": "I came here yesterday."])
        
        cards.append(["title":"Past Continuous", "formula":"S + WAS/WERE + VERB-ING + O/ADV", "example": "She was reading a book."])
        
        cards.append(["title":"Past Perfect", "formula":"S + HAD + VERB3 + O/ADV", "example": "He had left when she came."])
        
        cards.append(["title":"Past Perfect Continuous", "formula":"S + HAD + BEEN + VERB-ING + O/ADV", "example": "She had been sitting there for a long time."])
        
        //FUTURE
        
        cards.append(["title":"Simple Future", "formula":"S + WILL/SHALL + VERB1 + O/ADV", "example": "Mario will bring the laptop."])
        
        cards.append(["title":"Future Continuous", "formula":"S + WILL/SHALL + BE + VERB-ING + O/ADV", "example": "Robert will be buying the food for tonight's dinner."])
        
        cards.append(["title":"Future Perfect", "formula":"S + WILL/SHALL + HAVE + VERB3 + O/ADV", "example": "You will have got my telegram before this letter reaches you."])
        
        cards.append(["title":"Future Perfect Continuous", "formula":"S + WILL/SHALL + HAVE + BEEN + VERB-ING + O/ADV", "example": "I will have been living here for 5 years by next February."])
        
    }
    
    func getRandomCard() -> Dictionary<String, String> {
        
        var randomNumber = 0
        
        
        repeat{
            randomNumber = Int(arc4random_uniform(UInt32(cards.count)))
        } while randomNumber == self.tempRandomNumber //Preventing the same tense to appear consecutively
        
        let randomCard: Dictionary<String, String> = cards[randomNumber]
        
        return randomCard
    }
    
    func someFunc() -> Bool {
        return true
    }
}