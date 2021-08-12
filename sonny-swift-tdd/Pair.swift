//
//  Pair.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/08/12.
//

import Foundation

struct Pair: Equatable, Hashable {
    private var from: String
    private var to: String
    init(_ from: String, _ to: String) {
        self.from = from
        self.to = to
    }
    static func == (lhs: Pair, rhs: Pair) -> Bool {
        lhs.from == rhs.from && lhs.to == rhs.to
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(from)
        hasher.combine(to)
    }
}
