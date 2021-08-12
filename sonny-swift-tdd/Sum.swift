//
//  Sum.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/29.
//

import Foundation

struct Sum: Expression {
    var augend: Expression
    var addend: Expression
    init(_ augend: Expression, _ addend: Expression) {
        self.augend = augend
        self.addend = addend
    }
    func plus(_ addend: Expression) -> Expression {
        return augend
    }
    func reduce(_ bank: Bank, to: String) -> Money {
        let amount = augend.reduce(bank, to: to).amount + addend.reduce(bank, to: to).amount
        return Money(amount, to)
    }
}
