//
//  Solution20.swift
//  LeetCode
//
//  Created by fate on 2023/8/24.
//

import Foundation

extension Solution {
    
    
    /// 单调栈
    /// 双指针
    /// 二分查找
    /// 队列
    func isValid(_ s: String) -> Bool {
        
        var stack = [String.Element]()
        
        if s.count % 2 != 0 {return false}
        
        for c in s {
            if c == "(" {
                stack.append(")")
            } else if c == "{" {
                stack.append("}")
            } else if c == "[" {
                stack.append("]")
            } else {
                if (stack.last == c) {
                    stack.removeLast()
                } else {
                    return false;
                }
                
            }
        }
        
        return stack.isEmpty
    }
}
