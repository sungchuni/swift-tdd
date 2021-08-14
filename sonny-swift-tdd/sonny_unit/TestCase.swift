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
    func run() -> Void {
        setUp()
        if name == "testMethod" {
            testMethod()
        }
        tearDown()
    }
    func setUp() {}
    func tearDown() {}
    func testMethod() {}
}
