//
//  Solution150.swift
//  LeetCode
//
//  Created by fate on 2024/5/22.
//

import Foundation

/**
 150. 逆波兰表达式求值
 给你一个字符串数组 tokens ，表示一个根据 逆波兰表示法 表示的算术表达式。
 请你计算该表达式。返回一个表示表达式值的整数。

 注意：
 * 有效的算符为 '+'、'-'、'*' 和 '/' 。
 * 每个操作数（运算对象）都可以是一个整数或者另一个表达式。
 * 两个整数之间的除法总是 向零截断 。
 * 表达式中不含除零运算。
 * 输入是一个根据逆波兰表示法表示的算术表达式。
 * 答案及所有中间计算结果可以用 32 位 整数表示。
 */
extension Solution {
    
    enum Symbol : String {
        case add = "+"
        case miuns = "-"
        case multiple = "*"
        case divide = "/"
    }
    
    
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()
        for str in tokens {
            if let symbol = Symbol(rawValue: str) {
                
                let num2 = stack.removeLast()
                let num1 = stack.removeLast()
                
                switch symbol {
                    case .add: stack.append(_add(num1, num2))
                    case .miuns: stack.append(_minus(num1, num2))
                    case .multiple: stack.append(_multiply(num1, num2))
                    case .divide: stack.append(_divide(num1, num2))
                }
            } else {
                stack.append(Int(str)!)
            }
        }
        return stack.removeLast()
    }
    
    
    func evalRPN1(_ tokens: [String]) -> Int {

        var stack = [Int]()
        
        for str in tokens {
        
            if let value = Int(str) {
                stack.append(value)
            } else {
                while !stack.isEmpty {
                    
                    let num2 = stack.removeLast()
                    let num1 = stack.removeLast()
                
                    
                    if (str == "+") {
                        stack.append(_add(num1, num2))
                        break

                    } else if (str == "-") {
                        stack.append(_minus(num1, num2))
                        break

                    } else if (str == "*") {
                        stack.append(_multiply(num1, num2))
                        break
                    } else {
                        stack.append(_divide(num1, num2))
                        break

                    }
                }
            }
        }
        return stack.removeLast()
    }
    
    func _add(_ num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
    
    func _minus(_ num1: Int, _ num2: Int) -> Int {
        return num1 - num2
    }
    
    func _divide(_ num1: Int, _ num2: Int) -> Int {
        return num1 / num2
    }
    
    func _multiply(_ num1: Int, _ num2: Int) -> Int {
        return num1 * num2
    }
}
