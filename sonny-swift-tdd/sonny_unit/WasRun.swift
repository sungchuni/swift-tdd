//
//  WasRun.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/08/13.
//

import Foundation

enum WasRunError: Error {
    case base
}

class WasRun: TestCase {
    var log = ""
    override func setUp() {
        log += "setUp "
    }
    override func tearDown() {
        log += "tearDown "
    }
    override func testBrokenMethod() throws {
        throw WasRunError.base
    }
    override func testMethod() {
        log += "testMethod "
    }
}
