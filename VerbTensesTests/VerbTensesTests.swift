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
    
    func testExample() {

        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //let vc = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! UIViewController
        var result:Bool = true
        
        let m = Deck()
        let card = m.getRandomCard()
        let card2 = m.getRandomCard()
        
        result = card["title"] != card2["title"]
        result = result && (card["formula"] != card2["formula"])
        result = result && (card["example"] != card2["example"])
        
        print(card)
        print(card2)

        
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
