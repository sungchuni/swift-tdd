//
//  sonny_unitTests.swift
//  sonny-swift-tddTests
//
//  Created by sungchuni on 2021/08/13.
//

import XCTest
@testable import sonny_swift_tdd

class sonny_unitTests: XCTestCase {
    var result: TestResult!
    override func setUp() {
        result = TestResult()
    }
    func testTemplateMethod() throws {
        let test = WasRun("testMethod")
        test.run(&result)
        XCTAssertEqual("setUp testMethod tearDown ", test.log)
    }
    func testResult() throws {
        let test = WasRun("testMethod")
        test.run(&result)
        XCTAssertEqual("1 run, 0 failed", result.summary())
    }
    func testFailedResult() throws {
        let test = WasRun("testBrokenMethod")
        test.run(&result)
        XCTAssertEqual("1 run, 1 failed", result.summary())
    }
    func testFailedResultFormatting() throws {
        result.testStarted()
        result.testFailed()
        XCTAssertEqual("1 run, 1 failed", result.summary())
    }
    func testSuite() {
        var suite = TestSuite()
        suite.add(WasRun("testMethod"))
        suite.add(WasRun("testBrokenMethod"))
        suite.run(&result)
        XCTAssertEqual("2 run, 1 failed", result.summary())
    }
}
