//
//  Franc.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/15.
//

import Foundation

class Franc: Money {
    func times(_ multiplier: Int) -> Franc {
        return Franc(amount * multiplier)
    }
}
