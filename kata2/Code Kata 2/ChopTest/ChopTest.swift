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
    
    
    func testAll() {
        // G&W&T
        XCTAssertEqual(-1, recursiveChop(3, array: []))
        XCTAssertEqual(-1, recursiveChop(3, array: [1]))
        XCTAssertEqual(0,  recursiveChop(1, array: [1]))
        //
        XCTAssertEqual(0,  recursiveChop(1, array: [1, 3, 5]))
        XCTAssertEqual(1,  recursiveChop(3, array: [1, 3, 5]))
        XCTAssertEqual(2,  recursiveChop(5, array: [1, 3, 5]))
        XCTAssertEqual(-1, recursiveChop(0, array: [1, 3, 5]))
        XCTAssertEqual(-1, recursiveChop(2, array: [1, 3, 5]))
        XCTAssertEqual(-1, recursiveChop(4, array: [1, 3, 5]))
        XCTAssertEqual(-1, recursiveChop(6, array: [1, 3, 5]))
        //
        XCTAssertEqual(0,  recursiveChop(1, array: [1, 3, 5, 7]))
        XCTAssertEqual(1,  recursiveChop(3, array: [1, 3, 5, 7]))
        XCTAssertEqual(2,  recursiveChop(5, array: [1, 3, 5, 7]))
        XCTAssertEqual(3,  recursiveChop(7, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, recursiveChop(0, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, recursiveChop(2, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, recursiveChop(4, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, recursiveChop(6, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, recursiveChop(8, array: [1, 3, 5, 7]))
    }
    
    func testAllIterative() {
        // G&W&T
        XCTAssertEqual(-1, iterativeChop(3, array: []))
        XCTAssertEqual(-1, iterativeChop(3, array: [1]))
        XCTAssertEqual(0,  iterativeChop(1, array: [1]))
        //
        XCTAssertEqual(0,  iterativeChop(1, array: [1, 3, 5]))
        XCTAssertEqual(1,  iterativeChop(3, array: [1, 3, 5]))
        XCTAssertEqual(2,  iterativeChop(5, array: [1, 3, 5]))
        XCTAssertEqual(-1, iterativeChop(0, array: [1, 3, 5]))
        XCTAssertEqual(-1, iterativeChop(2, array: [1, 3, 5]))
        XCTAssertEqual(-1, iterativeChop(4, array: [1, 3, 5]))
        XCTAssertEqual(-1, iterativeChop(6, array: [1, 3, 5]))
        //
        XCTAssertEqual(0,  iterativeChop(1, array: [1, 3, 5, 7]))
        XCTAssertEqual(1,  iterativeChop(3, array: [1, 3, 5, 7]))
        XCTAssertEqual(2,  iterativeChop(5, array: [1, 3, 5, 7]))
        XCTAssertEqual(3,  iterativeChop(7, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, iterativeChop(0, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, iterativeChop(2, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, iterativeChop(4, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, iterativeChop(6, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, iterativeChop(8, array: [1, 3, 5, 7]))
    }
    
    
    
}
