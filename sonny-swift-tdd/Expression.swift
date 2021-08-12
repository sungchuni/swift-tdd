//
//  Expression.swift
//  sonny-swift-tdd
//
//  Created by sungchuni on 2021/07/22.
//

import Foundation

protocol Expression {
    func plus(_ addend: Expression) -> Expression
    func reduce(_ bank: Bank, to: String) -> Money
}
