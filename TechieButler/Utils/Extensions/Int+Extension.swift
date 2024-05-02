//
//  Int+Extension.swift
//  TechieButler
//
//  Created by Shivansh Gaur on 02/05/24.
//

import Foundation

public extension Int {
    /**
     Returns the ordinal representation of the integer value.

     For example, it converts `1` to `"1st"`, `2` to `"2nd"`, `3` to `"3rd"`, `4` to `"4th"`, and so on.
     
     - Returns: The ordinal representation of the integer value as a `String`.
     */
    var ordinalRepresentation: String {
        let suffixes = ["th", "st", "nd", "rd", "th", "th", "th", "th", "th", "th"]
        switch self % 100 {
        case 11...13:
            return "\(self)th"
        default:
            return "\(self)\(suffixes[self % 10])"
        }
    }
}
