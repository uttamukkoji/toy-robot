//
//  TableTest.swift
//  toy-robotTests
//
//  Created by Uttam Ukkoji on 30/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import XCTest
@testable import toy_robot
class TableTest: XCTestCase {

    var table : Table?
    override func setUp() {
        self.table = Table(rows: 5, columns: 5)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Table_NegativeValue_ReturnNil() {
        let tableWithNagativeValue = Table(rows: -1, columns: -1)
        XCTAssertNil(tableWithNagativeValue)
    }
    
    func test_Table_NonSqureValue_ReturnNil() {
        let tableWithNonSqureValue = Table(rows: 4, columns: 3)
        XCTAssertNil(tableWithNonSqureValue)
    }

    func test_Table_SqureValue_ReturnObjet() {
        let tableWithSqureValue = Table(rows: 4, columns: 4)
        XCTAssertNotNil(tableWithSqureValue)
    }
    
    func test_Position_OutOfTable() {
        let positionOutofTable = Position(x: 6, y: 5, direction: Direction.east)
        XCTAssertFalse(self.table!.isPositionValid(positionOutofTable))
    }

    
    func test_Position_onTable() {
        let positionOnTable = Position(x: 3, y: 3, direction: Direction.east)
        XCTAssertTrue(self.table!.isPositionValid(positionOnTable))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
