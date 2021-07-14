//
//  Dollar.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/15.
//

import Foundation

struct Dollar {
    var amount: Int
    init(_ amount: Int) {
        self.amount = amount
    }
    mutating func times(_ multiplier: Int) {
        self.amount *= multiplier
    }
}
