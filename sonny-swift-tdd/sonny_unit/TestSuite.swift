//
//  TestSuite.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/08/16.
//

import Foundation

struct TestSuite {
    var tests: [TestCase] = []
    mutating func add(_ test: TestCase) {
        tests.append(test)
    }
    func run(_ result: inout TestResult) {
        for test in tests {
            test.run(&result)
        }
    }
}
