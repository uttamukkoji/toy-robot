//
//  CommanderTest.swift
//  toy-robotTests
//
//  Created by Uttam Ukkoji on 30/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import XCTest
@testable import toy_robot

class CommanderTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_PlacingOutOfTable_PositionNil()  {
        var commander = Commander(robot: Robot(), table: Table(rows: 5, columns: 5)!, commanderArray: [Executable]())
        commander.parse(command: "PLACE 6, 6, NORTH")
        commander.execute()
        XCTAssertNil(commander.robot.position)
    }
    
    func test_PlacingWrongCommand_PositionNil()  {
        var commander = Commander(robot: Robot(), table: Table(rows: 5, columns: 5)!, commanderArray: [Executable]())
        commander.parse(command: "PLACE 6, NORTH")
        commander.execute()
        XCTAssertNil(commander.robot.position)
    }
    
    func test_PlacingLowerCase_PositionNil()  {
        var commander = Commander(robot: Robot(), table: Table(rows: 5, columns: 5)!, commanderArray: [Executable]())
        commander.parse(command: "place 2, 4, NORTH")
        commander.execute()
        XCTAssertNil(commander.robot.position)
    }
    
    func test_PlacingonTable_PositionNil()  {
        var commander = Commander(robot: Robot(), table: Table(rows: 5, columns: 5)!, commanderArray: [Executable]())
        commander.parse(command: "PLACE 3, 2, NORTH")
        commander.execute()
        XCTAssertNotNil(commander.robot.position)
    }
    
    func test_LeftInvalid()  {
        var commander = Commander(robot: Robot(), table: Table(rows: 5, columns: 5)!, commanderArray: [Executable]())
        commander.parse(command: "PLACE 3, 2, NORTH")
        commander.parse(command: "LEEFT")
        commander.execute()
        XCTAssertEqual(Position(x: 3, y: 2, direction: Direction.north), commander.robot.position!)
    }
    
    func test_LeftValid()  {
        var commander = Commander(robot: Robot(), table: Table(rows: 5, columns: 5)!, commanderArray: [Executable]())
        commander.parse(command: "PLACE 3, 2, NORTH")
        commander.parse(command: "LEFT")
        commander.execute()
        XCTAssertEqual(Position(x: 3, y: 2, direction: Direction.west), commander.robot.position!)
    }
    
    func test_MoveInvalid()  {
        var commander = Commander(robot: Robot(), table: Table(rows: 5, columns: 5)!, commanderArray: [Executable]())
        commander.parse(command: "PLACE 4, 4, NORTH")
        commander.parse(command: "MOVE")
        commander.execute()
        XCTAssertEqual(Position(x: 4, y: 4, direction: Direction.north), commander.robot.position!)
    }
    
    func test_MoveLowerCase()  {
        var commander = Commander(robot: Robot(), table: Table(rows: 5, columns: 5)!, commanderArray: [Executable]())
        commander.parse(command: "PLACE 4, 4, NORTH")
        commander.parse(command: "Move")
        commander.execute()
        XCTAssertEqual(Position(x: 4, y: 4, direction: Direction.north), commander.robot.position!)
    }
    
    func test_MoveValid()  {
        var commander = Commander(robot: Robot(), table: Table(rows: 5, columns: 5)!, commanderArray: [Executable]())
        commander.parse(command: "PLACE 3, 2, NORTH")
        commander.parse(command: "MOVE")
        commander.execute()
        XCTAssertEqual(Position(x: 3, y: 3, direction: Direction.north), commander.robot.position!)
    }
    
    func test_RightInvalid()  {
        var commander = Commander(robot: Robot(), table: Table(rows: 5, columns: 5)!, commanderArray: [Executable]())
        commander.parse(command: "PLACE 3, 2, NORTH")
        commander.parse(command: "RIGGHT")
        commander.execute()
        XCTAssertEqual(Position(x: 3, y: 2, direction: Direction.north), commander.robot.position!)
    }
    
    func test_RighValid()  {
        var commander = Commander(robot: Robot(), table: Table(rows: 5, columns: 5)!, commanderArray: [Executable]())
        commander.parse(command: "PLACE 3, 2, NORTH")
        commander.parse(command: "RIGHT")
        commander.execute()
        XCTAssertEqual(Position(x: 3, y: 2, direction: Direction.east), commander.robot.position!)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
