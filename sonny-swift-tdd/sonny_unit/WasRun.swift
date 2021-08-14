//
//  WasRun.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/08/13.
//

import Foundation

class WasRun: TestCase {
    var wasRun = false
    var wasSetup = false
    override func setUp() {
        wasSetup = true
    }
    override func testMethod() {
        wasRun = true
    }
}
