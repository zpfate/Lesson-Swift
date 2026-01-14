//
//  Money.swift
//  SwiftDemo
//
//  Created by fate on 2026/1/14.
//

import Foundation

struct Money {
    private var amount: Decimal
    private let currency: String
    
    init(_ value: Decimal, currency: String = "CNY") {
        self.amount = value
        self.currency = currency
    }
    
    // 加法
    static func +(lhs: Money, rhs: Money) -> Money {
        return Money(lhs.amount + rhs.amount, currency: lhs.currency)
    }
    
    // 减法
    static func -(lhs: Money, rhs: Money) -> Money {
        return Money(lhs.amount - rhs.amount, currency: lhs.currency)
    }
    
    // 格式化显示
    func formatted() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = currency
        return formatter.string(from: amount as NSDecimalNumber) ?? ""
    }
}

// 使用
let item1 = Money(19.99)
let item2 = Money(29.50)
let total = item1 + item2
print(total.formatted())
