//
//  Int+Extension.swift
//  TechieButler
//
//  Created by Shivansh Gaur on 02/05/24.
//

import Foundation

extension Int {
    
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
