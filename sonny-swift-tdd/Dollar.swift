//
//  Dollar.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/15.
//

import Foundation

class Dollar: Money {
    func times(_ multiplier: Int) -> Money {
        return Money.dollar(amount * multiplier)
    }
}
