//
//  Commander.swift
//  toy-robot
//
//  Created by Uttam Ukkoji on 29/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import Foundation

struct Commander: Executable {
    var robot: Robot
    var table: Table
    var commanderArray = [Executable]()

    mutating func parse(command: String) {
        if command.isPLACECommand() {
            let placeArray = command.replacingOccurrences(of: "PLACE", with: "").replacingOccurrences(of: " ", with: "").split(separator: ",")
            if let x = Int(placeArray[0]), let y = Int(placeArray[1]), let direction = direction(String(placeArray[2])) {
                let position = Position(x: x, y: y, direction: direction)
                commanderArray.append(Place(robot: robot, table: table, position: position))
            }
        }else if command.isMOVECommand() {
            commanderArray.append(Move(robot: robot, table: table))
        }else if command.isLEFTCommand() {
            commanderArray.append(Left(robot: robot))
        }else if command.isRIGHTCommand() {
            commanderArray.append(Right(robot: robot))
        }else if command.isREPORTCommand() {
            commanderArray.append(Report(robot: robot))
        }
    }
    
    mutating func execute() {
        for var executable in commanderArray {
            executable.execute()
        }
    }
}
