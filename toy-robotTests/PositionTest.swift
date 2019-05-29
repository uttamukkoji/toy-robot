//
//  PositionTest.swift
//  toy-robotTests
//
//  Created by Uttam Ukkoji on 30/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import XCTest
@testable import toy_robot
class PositionTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Position_Move() {
        var position = Position(x: 3, y: 4, direction: Direction.east)
        position.move()
        XCTAssertEqual(4, position.x)
        XCTAssertEqual(4, position.y)
        XCTAssertEqual(Direction.east.rawValue, position.direction.rawValue)
    }
    
    func test_Robot_PositionDirectionLeft() {
        var position = Position(x: 3, y: 4, direction: Direction.east)
        position.leftDirection()
        XCTAssertEqual(Direction.north.rawValue, position.direction.rawValue)
        position.leftDirection()
        XCTAssertEqual(Direction.west.rawValue, position.direction.rawValue)
        position.leftDirection()
        XCTAssertEqual(Direction.south.rawValue, position.direction.rawValue)
        position.leftDirection()
        XCTAssertEqual(Direction.east.rawValue, position.direction.rawValue)
    }
    
    func test_Robot_PositionDirectionRIGHT() {
        var position = Position(x: 3, y: 4, direction: Direction.east)
        position.rightDirection()
        XCTAssertEqual(Direction.south.rawValue, position.direction.rawValue)
        position.rightDirection()
        XCTAssertEqual(Direction.west.rawValue, position.direction.rawValue)
        position.rightDirection()
        XCTAssertEqual(Direction.north.rawValue, position.direction.rawValue)
        position.rightDirection()
        XCTAssertEqual(Direction.east.rawValue, position.direction.rawValue)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
