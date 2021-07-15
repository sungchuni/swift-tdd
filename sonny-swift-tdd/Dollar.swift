//
//  Dollar.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/15.
//

import Foundation

struct Dollar: Equatable {
    private var amount: Int
    init(_ amount: Int) {
        self.amount = amount
    }
    mutating func times(_ multiplier: Int) -> Dollar {
        return Dollar(amount * multiplier)
    }
    func equals(_ object: Any) -> Bool {
        let dollar = object as? Dollar
        return amount == dollar?.amount
    }
}
