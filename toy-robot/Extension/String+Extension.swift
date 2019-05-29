//
//  String+Extension.swift
//  toy-robot
//
//  Created by Uttam Ukkoji on 29/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import Foundation

extension String {
    func isPLACECommand() -> Bool {
        guard let regex = try? NSRegularExpression(pattern: "^PLACE [0-9]+, [0-9]+, (?:NORTH|EAST|SOUTH|WEST)$") else { return false }
        let range = NSRange(location: 0, length: self.utf16.count)
        return regex.matches(in: self, options: NSRegularExpression.MatchingOptions.anchored, range: range).count != 0
    }
    
    func isLEFTCommand() -> Bool {
        guard let regex = try? NSRegularExpression(pattern: "^LEFT$") else { return false }
        let range = NSRange(location: 0, length: self.utf16.count)
        return regex.matches(in: self, options: NSRegularExpression.MatchingOptions.anchored, range: range).count != 0
    }
    
    func isRIGHTCommand() -> Bool {
        guard let regex = try? NSRegularExpression(pattern: "^RIGHT$") else { return false }
        let range = NSRange(location: 0, length: self.utf16.count)
        return regex.matches(in: self, options: NSRegularExpression.MatchingOptions.anchored, range: range).count != 0
    }
    
    func isMOVECommand() -> Bool {
        guard let regex = try? NSRegularExpression(pattern: "^MOVE$") else { return false }
        let range = NSRange(location: 0, length: self.utf16.count)
        return regex.matches(in: self, options: NSRegularExpression.MatchingOptions.anchored, range: range).count != 0
    }
    
    func isREPORTCommand() -> Bool {
        guard let regex = try? NSRegularExpression(pattern: "^REPORT$") else { return false }
        let range = NSRange(location: 0, length: self.utf16.count)
        return regex.matches(in: self, options: NSRegularExpression.MatchingOptions.anchored, range: range).count != 0
    }
}
