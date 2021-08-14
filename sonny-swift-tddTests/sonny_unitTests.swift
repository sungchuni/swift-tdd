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
}
