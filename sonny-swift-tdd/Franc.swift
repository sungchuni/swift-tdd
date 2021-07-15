//
//  Franc.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/15.
//

import Foundation

struct Franc: Equatable {
    private var amount: Int
    init(_ amount: Int) {
        self.amount = amount
    }
    mutating func times(_ multiplier: Int) -> Franc {
        return Franc(amount * multiplier)
    }
    func equals(_ object: Any) -> Bool {
        let dollar = object as? Franc
        return amount == dollar?.amount
    }
}
