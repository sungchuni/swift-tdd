//
//  sonny_swift_tddTests.swift
//  sonny-swift-tddTests
//
//  Created by sungchuni on 2021/07/15.
//

import XCTest
@testable import sonny_swift_tdd

class sonny_swift_tddTests: XCTestCase {
    func testMultiplication() throws {
        let five = Dollar(5)
        XCTAssertEqual(Dollar(10), five.times(2))
        XCTAssertEqual(Dollar(15), five.times(3))
    }
    func testEquality() throws {
        XCTAssertEqual(Dollar(5), Dollar(5))
        XCTAssertNotEqual(Dollar(5), Dollar(6))
        XCTAssertEqual(Franc(5), Franc(5))
        XCTAssertNotEqual(Franc(5), Franc(6))
        XCTAssertNotEqual(Dollar(5), Franc(5))
    }
}
