//
//  RobotTest.swift
//  toy-robotTests
//
//  Created by Uttam Ukkoji on 30/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import XCTest
@testable import toy_robot
class RobotTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Robot_PositionMove() {
        let robot = Robot()
        robot.position = Position(x: 3, y: 4, direction: Direction.east)
        robot.position!.move()
        XCTAssertEqual(4, robot.position!.x)
        XCTAssertEqual(4, robot.position!.y)
        XCTAssertEqual(Direction.east.rawValue, robot.position!.direction.rawValue)
    }
    
    func test_Robot_PositionDirectionLeft() {
        let robot = Robot()
        robot.position = Position(x: 3, y: 4, direction: Direction.east)
        robot.position!.leftDirection()
        XCTAssertEqual(Direction.north.rawValue, robot.position!.direction.rawValue)
        robot.position!.leftDirection()
        XCTAssertEqual(Direction.west.rawValue, robot.position!.direction.rawValue)
        robot.position!.leftDirection()
        XCTAssertEqual(Direction.south.rawValue, robot.position!.direction.rawValue)
        robot.position!.leftDirection()
        XCTAssertEqual(Direction.east.rawValue, robot.position!.direction.rawValue)
    }
    
    func test_Robot_PositionDirectionRIGHT() {
        let robot = Robot()
        robot.position = Position(x: 3, y: 4, direction: Direction.east)
        robot.position!.rightDirection()
        XCTAssertEqual(Direction.south.rawValue, robot.position!.direction.rawValue)
        robot.position!.rightDirection()
        XCTAssertEqual(Direction.west.rawValue, robot.position!.direction.rawValue)
        robot.position!.rightDirection()
        XCTAssertEqual(Direction.north.rawValue, robot.position!.direction.rawValue)
        robot.position!.rightDirection()
        XCTAssertEqual(Direction.east.rawValue, robot.position!.direction.rawValue)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
