//
//  Report.swift
//  toy-robot
//
//  Created by Uttam Ukkoji on 29/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import Foundation

struct Report: Executable {
    var robot: Robot
    
    /// Report current position and direction of Robot.
    mutating func execute() {
        if robot.isPlaced {
            robot.report()
        }
    }
}
