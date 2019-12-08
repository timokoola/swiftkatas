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
    
    func testAll() {
        // G&W&T
        XCTAssertEqual(-1, dummyChop(3, array: []))
        XCTAssertEqual(-1, dummyChop(3, array: [1]))
        XCTAssertEqual(0,  dummyChop(1, array: [1]))
        //
        XCTAssertEqual(0,  dummyChop(1, array: [1, 3, 5]))
        XCTAssertEqual(1,  dummyChop(3, array: [1, 3, 5]))
        XCTAssertEqual(2,  dummyChop(5, array: [1, 3, 5]))
        XCTAssertEqual(-1, dummyChop(0, array: [1, 3, 5]))
        XCTAssertEqual(-1, dummyChop(2, array: [1, 3, 5]))
        XCTAssertEqual(-1, dummyChop(4, array: [1, 3, 5]))
        XCTAssertEqual(-1, dummyChop(6, array: [1, 3, 5]))
        //
        XCTAssertEqual(0,  dummyChop(1, array: [1, 3, 5, 7]))
        XCTAssertEqual(1,  dummyChop(3, array: [1, 3, 5, 7]))
        XCTAssertEqual(2,  dummyChop(5, array: [1, 3, 5, 7]))
        XCTAssertEqual(3,  dummyChop(7, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, dummyChop(0, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, dummyChop(2, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, dummyChop(4, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, dummyChop(6, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, dummyChop(8, array: [1, 3, 5, 7]))
    }
    
    
}
