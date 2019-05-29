//
//  Table.swift
//  toy-robot
//
//  Created by Uttam Ukkoji on 28/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import Foundation

class Table {
    let rows : Int
    let columns: Int
    
    init?(rows: Int, columns: Int) {
        if (rows > 0 && columns > 0 && rows == columns) {
            self.rows = rows
            self.columns = columns
            return
        }
        return nil
    }
    
    func isPositionValid(_ position: Position) -> Bool {
        return  position.x < columns &&
        position.y < rows &&
        position.x >= 0 &&
        position.y >= 0
    }
    
}
