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
    
    func testAllSlice() {
        // G&W&T
        XCTAssertEqual(-1, sliceChop(3, array: []))
        XCTAssertEqual(-1, sliceChop(3, array: [1]))
        XCTAssertEqual(0,  sliceChop(1, array: [1]))
        //
        XCTAssertEqual(0,  sliceChop(1, array: [1, 3, 5]))
        XCTAssertEqual(1,  sliceChop(3, array: [1, 3, 5]))
        XCTAssertEqual(2,  sliceChop(5, array: [1, 3, 5]))
        XCTAssertEqual(-1, sliceChop(0, array: [1, 3, 5]))
        XCTAssertEqual(-1, sliceChop(2, array: [1, 3, 5]))
        XCTAssertEqual(-1, sliceChop(4, array: [1, 3, 5]))
        XCTAssertEqual(-1, sliceChop(6, array: [1, 3, 5]))
        //
        XCTAssertEqual(0,  sliceChop(1, array: [1, 3, 5, 7]))
        XCTAssertEqual(1,  sliceChop(3, array: [1, 3, 5, 7]))
        XCTAssertEqual(2,  sliceChop(5, array: [1, 3, 5, 7]))
        XCTAssertEqual(3,  sliceChop(7, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, sliceChop(0, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, sliceChop(2, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, sliceChop(4, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, sliceChop(6, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, sliceChop(8, array: [1, 3, 5, 7]))
    }
    
    
    func testAlliterativeChopRandom() {
        // G&W&T
        XCTAssertEqual(-1, iterativeChopRandom(3, array: []))
        XCTAssertEqual(-1, iterativeChopRandom(3, array: [1]))
        XCTAssertEqual(0,  iterativeChopRandom(1, array: [1]))
        //
        XCTAssertEqual(0,  iterativeChopRandom(1, array: [1, 3, 5]))
        XCTAssertEqual(1,  iterativeChopRandom(3, array: [1, 3, 5]))
        XCTAssertEqual(2,  iterativeChopRandom(5, array: [1, 3, 5]))
        XCTAssertEqual(-1, iterativeChopRandom(0, array: [1, 3, 5]))
        XCTAssertEqual(-1, iterativeChopRandom(2, array: [1, 3, 5]))
        XCTAssertEqual(-1, iterativeChopRandom(4, array: [1, 3, 5]))
        XCTAssertEqual(-1, iterativeChopRandom(6, array: [1, 3, 5]))
        //
        XCTAssertEqual(0,  iterativeChopRandom(1, array: [1, 3, 5, 7]))
        XCTAssertEqual(1,  iterativeChopRandom(3, array: [1, 3, 5, 7]))
        XCTAssertEqual(2,  iterativeChopRandom(5, array: [1, 3, 5, 7]))
        XCTAssertEqual(3,  iterativeChopRandom(7, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, iterativeChopRandom(0, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, iterativeChopRandom(2, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, iterativeChopRandom(4, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, iterativeChopRandom(6, array: [1, 3, 5, 7]))
        XCTAssertEqual(-1, iterativeChopRandom(8, array: [1, 3, 5, 7]))
    }
    
}
