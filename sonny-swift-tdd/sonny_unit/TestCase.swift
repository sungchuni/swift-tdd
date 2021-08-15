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
    func run(_ result: inout TestResult) {
        result.testStarted()
        setUp()
        do {
            if name == "testMethod" {
                testMethod()
            } else if name == "testBrokenMethod" {
                try testBrokenMethod()
            }
        } catch {
            result.testFailed()
        }
        tearDown()
    }
    func setUp() {}
    func tearDown() {}
    func testBrokenMethod() throws {}
    func testMethod() {}
}
