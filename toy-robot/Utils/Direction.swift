//
//  Direction.swift
//  toy-robot
//
//  Created by Uttam Ukkoji on 28/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import Foundation

func direction(_ string: String) -> Direction? {
    switch string {
    case "NORTH":
        return Direction.north
    case "EAST":
        return Direction.east
    case "SOUTH":
        return Direction.south
    case "WEST":
        return Direction.west
    default:
        return nil
    }
}

/// Direction of Robot is facing.
///
/// - north: Robot facing north direction
/// - east: Robot facing east direction
/// - south: Robot facing south direction
/// - west: Robot facing west direction
public enum Direction: Int, Descriptable {
    case north = 0
    case east
    case south
    case west
    
    var description: String {
        switch self {
        case .north:
            return "NORTH"
        case .east:
            return "EAST"
        case .south:
            return "SOUTH"
        case .west:
            return "WEST"
        }
    }
    
    
}
    
