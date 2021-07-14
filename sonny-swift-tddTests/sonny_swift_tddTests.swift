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
        var five = Dollar(5)
        var product = five.times(2)
        XCTAssertEqual(10, product.amount)
        product = five.times(3)
        XCTAssertEqual(15, product.amount)
    }
    func testEquality() throws {
        XCTAssertTrue(Dollar(5).equals(Dollar(5)))
        XCTAssertFalse(Dollar(5).equals(Dollar(6)))
    }
}
