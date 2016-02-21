//
//  VerbTensesTests.swift
//  VerbTensesTests
//
//  Created by Gerardo Camilo on 7/10/15.
//  Copyright (c) 2015 ___GRCS___. All rights reserved.
//

import UIKit
import XCTest
@testable import VerbTenses

class VerbTensesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNoConsecutiveCardGenerated() {

        var result:Bool = true
        let howManyCards = 1000 //Times that method is going to be tested.
        let myTestDeck = Deck()
        var counter = 0
        
        self.measureBlock(){
            repeat{
        
                let card1 = myTestDeck.getRandomCard()
                let card2 = myTestDeck.getRandomCard()
        
                // Validates if both elements are different
                //TODO: Implement an "equals()" method in Deck class to replace this.
                result = card1["title"] != card2["title"]
                result = result && (card1["formula"] != card2["formula"])
                result = result && (card1["example"] != card2["example"])
                counter++
            
                if result == false {
                    print(card1)
                    print(card2)
                }
            
            } while result == true && counter <= howManyCards
        }
        
        XCTAssert(result, "Pass")
    }
    
    func testGetRandomCardPerformance() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
            let m = Deck()
            _ = m.getRandomCard()
        }
    }
    
}
