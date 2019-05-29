//
//  Place.swift
//  toy-robot
//
//  Created by Uttam Ukkoji on 29/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import Foundation


struct Place: Executable {
    var robot: Robot
    var table: Table
    var position: Position
    /// Report current position and direction of Robot.
    mutating func execute() {
        if table.isPositionValid(position) {
            robot.position = position
        }
    }
}
