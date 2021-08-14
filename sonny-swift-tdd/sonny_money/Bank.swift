//
//  Bank.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/22.
//

import Foundation

struct Bank {
    private var rates: [Pair: Int] = [:]
    mutating func addRate(_ from: String, _ to: String, _ rate: Int) {
        rates[Pair(from, to)] = rate
    }
    func rate(_ from: String, _ to: String) -> Int {
        from == to ? 1 : rates[Pair(from, to)]!
    }
    func reduce(source: Expression, to: String) -> Money {
        return source.reduce(self, to: to)
    }
}
