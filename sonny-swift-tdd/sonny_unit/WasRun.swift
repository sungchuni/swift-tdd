//
//  WasRun.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/08/13.
//

import Foundation

struct WasRun {
    var name: String
    var wasRun = false
    init(_ name: String) {
        self.name = name
    }
    mutating func run() -> Void {
        if name == "testMethod" {
            testMethod()
        }
    }
    mutating func testMethod() {
        wasRun = true
    }
}
