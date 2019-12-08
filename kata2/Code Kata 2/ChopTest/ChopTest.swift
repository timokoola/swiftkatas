//
//  ChopTest.swift
//  ChopTest
//
//  Created by skadiuser on 8.12.2019.
//  Copyright © 2019 Timo Koola. All rights reserved.
//

import XCTest

class ChopTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testChopEmpty() {
        // GIVEN
        let testArr : [Int] = []
        
        // WHEN
        let result = dummyChop(3, array: testArr)
        
        // THEN
        XCTAssertEqual(-1, result)
    }
 
}
