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
        let five = Money.dollar(5)
        XCTAssertEqual(Money.dollar(10), five.times(2))
        XCTAssertEqual(Money.dollar(15), five.times(3))
    }
    func testEquality() throws {
        XCTAssertEqual(Money.dollar(5), Money.dollar(5))
        XCTAssertNotEqual(Money.dollar(5), Money.dollar(6))
        XCTAssertNotEqual(Money.dollar(5), Money.franc(5))
    }
    func testCurrency() throws {
        XCTAssertEqual("USD", Money.dollar(1).currency)
        XCTAssertEqual("CHF", Money.franc(1).currency)
    }
    func testSimpleAddition() throws {
        let five = Money.dollar(5)
        let sum = five.plus(five)
        let bank = Bank()
        let reduced = bank.reduce(source: sum, to: "USD")
        XCTAssertEqual(Money.dollar(10), reduced)
    }
    func testPlusReturnsSum() throws {
        let five = Money.dollar(5)
        let result = five.plus(five)
        let sum = result as! Sum
        XCTAssertEqual(five, sum.augend)
        XCTAssertEqual(five, sum.addend)
    }
    func testReduceSum() throws {
        let sum = Sum(Money.dollar(3), Money.dollar(4))
        let bank = Bank()
        let result = bank.reduce(source: sum, to: "USD")
        XCTAssertEqual(Money.dollar(7), result)
    }
    func testReduceMoney() throws {
        let bank = Bank()
        let result = bank.reduce(source: Money.dollar(1), to: "USD")
        XCTAssertEqual(Money.dollar(1), result)
    }
}
