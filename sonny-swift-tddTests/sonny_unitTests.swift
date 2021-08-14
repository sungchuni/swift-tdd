//
//  sonny_unitTests.swift
//  sonny-swift-tddTests
//
//  Created by sungchuni on 2021/08/13.
//

import XCTest
@testable import sonny_swift_tdd

class sonny_unitTests: XCTestCase {
    func testTemplateMethod() throws {
        let test = WasRun("testMethod")
        test.run()
        XCTAssertEqual("setUp testMethod tearDown ", test.log)
    }
    func testResult() throws {
        let test = WasRun("testMethod")
        let result = test.run()
        XCTAssertEqual("1 run, 0 failed", result.summary())
    }
    func testFailedResult() throws {
        let test = WasRun("testMethod")
        let result = test.run()
        XCTAssertEqual("1 run, 1 failed", result.summary())
    }
}
