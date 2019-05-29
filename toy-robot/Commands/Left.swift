//
//  Left.swift
//  toy-robot
//
//  Created by Uttam Ukkoji on 28/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import Foundation

struct Left: Executable {
    var robot: Robot
    
    /// Rotate Robot to the LEFT
    mutating func execute() {
        if robot.isPlaced {
            robot.position!.leftDirection()
        }
    }
}
