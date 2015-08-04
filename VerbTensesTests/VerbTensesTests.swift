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
        
        let myTestDeck = Deck()
        var tempVal = 0
        
        repeat{
        let card1 = myTestDeck.getRandomCard()
        let card2 = myTestDeck.getRandomCard()
        
        result = card1["title"] != card2["title"]
        result = result && (card1["formula"] != card2["formula"])
        result = result && (card1["example"] != card2["example"])
        tempVal++
            
        if result == false {
            print(card1)
            print(card2)
        }
            
        }while result == true && tempVal <= 50
        
        
        XCTAssert(result, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
            let m = Deck()
            _ = m.getRandomCard()
        }
    }
    
}
