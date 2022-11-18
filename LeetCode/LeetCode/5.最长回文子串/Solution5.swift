//
//  Solution5.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/11/18.
//

import Foundation

/// 给你一个字符串 s，找到 s 中最长的回文子串。

class Solution5 {
    func longestPalindrome(_ s: String) -> String {
        
        var result: String = ""
        var left: Int = 0
        var right: Int = s.count-1
        for i in 0..<s.count {
            for j in 0..<s.count {
                
                if (s.suffix(j) == s.suffix(j))
                
                right -= 1
            }
            left += 1
        }
    }
}
