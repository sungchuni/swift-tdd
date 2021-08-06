//
//  Money.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/15.
//

import Foundation

class Money: Expression, Equatable {
    internal var amount: Int
    internal var currency: String
    init(_ amount: Int, _ currency: String) {
        self.amount = amount
        self.currency = currency
    }
    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && lhs.currency == rhs.currency
    }
    static func dollar(_ amount: Int) -> Money {
        return Money(amount, "USD")
    }
    static func franc(_ amount: Int) -> Money {
        return Money(amount, "CHF")
    }
    func times(_ multiplier: Int) -> Money {
        return Money(amount * multiplier, currency)
    }
    func plus(_ addend: Money) -> Expression {
        return Sum(self, addend)
    }
    func reduce(to: String) -> Money {
        return self
    }
}
