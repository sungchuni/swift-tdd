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
    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.equals(rhs) && type(of: lhs) == type(of: rhs)
    }
    static func dollar(_ amount: Int) -> Dollar {
        return Dollar(amount)
    }
    static func franc(_ amount: Int) -> Franc {
        return Franc(amount)
    }
}
