//
//  Position.swift
//  toy-robot
//
//  Created by Uttam Ukkoji on 28/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import Foundation

///     x is the robot's HORIZONTAL position
///     y is the robot's VERTICAL position
///     see the chart below:
///     Y cooordinate
///           ^
///           |
///           |
///           |
///           +-------> X coordinate
struct Position: Equatable {
    var x: Int
    var y: Int
    var direction: Direction
    
    func goto(direction: Direction) -> Position {
        switch self.direction {
        case .north:
            return gotoNorth()
        case .east:
            return gotoEast()
        case .south:
            return gotoSouth()
        case .west:
            return gotoWest()
        }
    }
    
    mutating func leftDirection()  {
        self.direction =  Direction(rawValue: abs((Int(self.direction.rawValue) + 3) % 4)) ?? self.direction
    }
    
    mutating func rightDirection()  {
        self.direction =  Direction(rawValue: (Int(self.direction.rawValue) + 1 ) % 4) ?? self.direction
    }
    
    mutating func move() {
        switch self.direction {
        case .north:
            self.y += 1
        case .east:
            self.x += 1
        case .south:
            self.y -= 1
        case .west:
            self.x -= 1
        }
    }
    
    fileprivate func gotoNorth () -> Position {
        return Position(x: x, y: y + 1, direction: .north)
    }
    
    fileprivate func gotoEast () -> Position {
        return Position(x: x + 1, y: y, direction: .north)
    }
    
    fileprivate func gotoSouth () -> Position {
        return Position(x: x, y: y - 1, direction: .north)
    }
    
    fileprivate func gotoWest () -> Position {
        return Position(x: x - 1, y: y, direction: .north)
    }
    
    static func ==(lhs: Position, rhs: Position) -> Bool {
        return lhs.x == rhs.x &&
            lhs.y == rhs.y &&
            lhs.direction == rhs.direction
    }
}
