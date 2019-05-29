//
//  Move.swift
//  toy-robot
//
//  Created by Uttam Ukkoji on 28/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import Foundation

struct Move: Executable {
    
    var robot: Robot
    var table: Table
    /// Move Robot one step
    mutating func execute() {
        if robot.isPlaced {
            let newPosition = robot.position!.goto(direction: robot.position!.direction)
            if table.isPositionValid(newPosition) {
                robot.position!.move()
            }
        }
    }
}
