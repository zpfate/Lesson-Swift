//
//  Solution5.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/11/18.
//

import Foundation

/// 给你一个字符串 s，找到 s 中最长的回文子串。

extension Solution {
    
    func longestPalindrome(_ s: String) -> String {
       
        var arr:[Character] = []
        for i in 0..<s.count {
            let prefix = s[s.index(s.startIndex, offsetBy: i)]
            let suffixIndex = s.index(s.endIndex, offsetBy: -(i+1))
            let suffix = s[suffixIndex]
            if arr.contains(prefix) {
                return String(s[s.firstIndex(of: prefix)!...s.lastIndex(of: prefix)!])
            }
            arr.append(prefix)
            if arr.contains(suffix) {
                return String(s[s.firstIndex(of: suffix)!...s.lastIndex(of: suffix)!])
            }
            arr.append(suffix)
        }
        return ""
    }
}
