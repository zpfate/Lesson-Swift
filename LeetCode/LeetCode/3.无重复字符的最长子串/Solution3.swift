//
//  Solution3.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/11/18.
//

import Foundation

/// 给定一个字符串 s ，请你找出其中不含有重复字符的 最长子串 的长度。
class Solution3 {
    
   class func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var maxCount = 0
        var string = ""
      
        /// 遍历字符串
        for c in s {
            if string.contains(c) {
                /// 这边是移除截止到相同字符前的所有字符
                let index = string.firstIndex(of: c)
                string.removeSubrange(string.startIndex...index!)
            }
            string.append(c)

            if string.count >= maxCount {
                maxCount = string.count
            }
        }
        print("max count == \(maxCount)")
        return maxCount
    }
}
