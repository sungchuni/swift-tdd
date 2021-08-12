//
//  Sum.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/29.
//

import Foundation

struct Sum: Expression {
    var augend: Money
    var addend: Money
    init(_ augend: Money, _ addend: Money) {
        self.augend = augend
        self.addend = addend
    }
    func reduce(_ bank: Bank, to: String) -> Money {
        let amount = augend.amount + addend.amount
        return Money(amount, to)
    }
}
