//
//  TestResult.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/08/15.
//

import Foundation

struct TestResult {
    var runCount = 0
    mutating func testStarted() {
        runCount += 1
    }
    func summary() -> String {
        "\(runCount) run, 0 failed"
    }
}
