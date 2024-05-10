//
//  Solution13.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/11/20.
//

import Foundation
/**
 罗马数字包含以下七种字符: I， V， X， L，C，D 和 M。

 字符          数值
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 例如， 罗马数字 2 写做 II ，即为两个并列的 1 。12 写做 XII ，即为 X + II 。 27 写做  XXVII, 即为 XX + V + II 。
 
 */
extension Solution {
    /// 'LVIII'
    func romanToInt(_ s: String) -> Int {
        
        var sum = 0
        var preValue = 0
        for c in s {
            /// 获取当前值
            let currentValue = getValue(c)
            
            sum += currentValue
            if (currentValue > preValue) {
               sum -= 2 * preValue
            }
            
            preValue = currentValue
        }
        return sum
    }
    
    func getValue(_ char: Character) -> Int {
        switch char {
        case "I":
            return 1
        case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        case "M":
            return 1000
        default:
            return 1
        }
    }
    
}
