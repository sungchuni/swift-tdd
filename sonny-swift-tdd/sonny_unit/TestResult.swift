//
//  TestResult.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/08/15.
//

import Foundation

struct TestResult {
    var runCount = 0
    var failureCount = 0
    func summary() -> String {
        "\(runCount) run, \(failureCount) failed"
    }
    mutating func testFailed() {
        failureCount += 1
    }
    mutating func testStarted() {
        runCount += 1
    }
}
