//
//  TestCase.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/08/15.
//

import Foundation

class TestCase {
    var name: String
    init(_ name: String) {
        self.name = name
    }
    func run() -> TestResult {
        var result = TestResult()
        result.testStarted()
        setUp()
        if name == "testMethod" {
            testMethod()
        }
        tearDown()
        return result
    }
    func setUp() {}
    func tearDown() {}
    func testMethod() {}
}
