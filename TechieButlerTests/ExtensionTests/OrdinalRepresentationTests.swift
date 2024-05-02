//
//  OrdinalRepresentationTests.swift
//  TechieButlerTests
//
//  Created by Shivansh Gaur on 02/05/24.
//

import XCTest

final class OrdinalRepresentationTests: XCTestCase {
    
    func testOrdinalRepresentation() {
        // Test cases for different ordinal numbers
        
        XCTAssertEqual(1.ordinalRepresentation, "1st")
        XCTAssertEqual(2.ordinalRepresentation, "2nd")
        XCTAssertEqual(3.ordinalRepresentation, "3rd")
        XCTAssertEqual(4.ordinalRepresentation, "4th")
        XCTAssertEqual(11.ordinalRepresentation, "11th")
        XCTAssertEqual(12.ordinalRepresentation, "12th")
        XCTAssertEqual(13.ordinalRepresentation, "13th")
        XCTAssertEqual(21.ordinalRepresentation, "21st")
        XCTAssertEqual(22.ordinalRepresentation, "22nd")
        XCTAssertEqual(23.ordinalRepresentation, "23rd")
        XCTAssertEqual(24.ordinalRepresentation, "24th")
        XCTAssertEqual(100.ordinalRepresentation, "100th")
        XCTAssertEqual(101.ordinalRepresentation, "101st")
        XCTAssertEqual(102.ordinalRepresentation, "102nd")
        XCTAssertEqual(103.ordinalRepresentation, "103rd")
    }
}
