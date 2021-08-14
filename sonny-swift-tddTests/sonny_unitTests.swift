//
//  sonny_unitTests.swift
//  sonny-swift-tddTests
//
//  Created by sungchuni on 2021/08/13.
//

import XCTest
@testable import sonny_swift_tdd

class sonny_unitTests: XCTestCase {
    func testWasRun() throws {
        var test = WasRun("testMethod")
        XCTAssertFalse(test.wasRun)
        test.run()
        XCTAssertTrue(test.wasRun)
    }
}
