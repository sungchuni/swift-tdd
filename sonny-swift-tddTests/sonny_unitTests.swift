//
//  sonny_unitTests.swift
//  sonny-swift-tddTests
//
//  Created by sungchuni on 2021/08/13.
//

import XCTest
@testable import sonny_swift_tdd

class sonny_unitTests: XCTestCase {
    var test: WasRun! = nil
    override func setUp() {
        test = WasRun("testMethod")
    }
    func testRunning() throws {
        test.run()
        XCTAssertTrue(test.wasRun)
    }
    func testWasSetup() throws {
        test.run()
        XCTAssertTrue(test.wasSetup)
    }
}
