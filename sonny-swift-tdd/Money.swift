//
//  Money.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/15.
//

import Foundation

class Money: Equatable {
    internal var amount: Int
    internal var currency: String
    init(_ amount: Int, _ currency: String) {
        self.amount = amount
        self.currency = currency
    }
    func equals(_ object: Any) -> Bool {
        let money = object as? Money
        return amount == money?.amount
    }
    func getCurrency() -> String {
        return currency
    }
    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.equals(rhs) && type(of: lhs) == type(of: rhs)
    }
    static func dollar(_ amount: Int) -> Dollar {
        return Dollar(amount, "USD")
    }
    static func franc(_ amount: Int) -> Franc {
        return Franc(amount, "CHF")
    }
}
