//
//  Money.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/15.
//

import Foundation

class Money: Equatable {
    internal var amount: Int
    init(_ amount: Int) {
        self.amount = amount
    }
    func equals(_ object: Any) -> Bool {
        let money = object as? Money
        return amount == money?.amount
    }
    func times(_ multiplier: Int) -> Money {
        return Money(amount * multiplier)
    }
    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.equals(rhs)
    }
}
