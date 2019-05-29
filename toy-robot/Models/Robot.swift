//
//  Robot.swift
//  toy-robot
//
//  Created by Uttam Ukkoji on 28/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import Foundation
import os.log
class Robot {
    var position: Position?
    var reportArray: [String] = []
    func report() {
        if isPlaced {
            reportArray.append("\(position!.x), \(position!.y), \(position!.direction)")
            os_log(OSLogType.info, "%@", "\(position!.x), \(position!.y), \(position!.direction)")
        }
    }
    
    var isPlaced : Bool {
        guard let _ = self.position else {return false}
        return true
    }
    
    
}
