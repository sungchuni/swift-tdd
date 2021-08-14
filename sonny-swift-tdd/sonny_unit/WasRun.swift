//
//  WasRun.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/08/13.
//

import Foundation

class WasRun: TestCase {
    var log = ""
    override func setUp() {
        log += "setUp "
    }
    override func tearDown() {
        log += "tearDown "
    }
    override func testMethod() {
        log += "testMethod "
    }
}
