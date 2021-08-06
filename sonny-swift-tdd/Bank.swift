//
//  Bank.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/22.
//

import Foundation

struct Bank {
    func reduce(source: Expression, to: String) -> Money {
        return source.reduce(to: to)
    }
}
