//
//  Solution14.swift
//  LeetCode
//
//  Created by fate on 2023/5/25.
//

import Foundation
/***
 14. 最长公共前缀
 编写一个函数来查找字符串数组中的最长公共前缀。
 如果不存在公共前缀，返回空字符串 ""。
 */
extension Solution {
    
    func longestCommonPrefixA(_ strs: [String]) -> String {
        
        if strs.isEmpty {
            return ""
        }
        
        var prefix = strs.first
        
        for i in 1..<strs.count {
            
            let str = strs[i]
            
            if str.isEmpty || prefix!.isEmpty {
                return ""
            }
            
            var temp = ""
            
            for j in 0..<(min(str.count, prefix!.count)) {
                
                let prefixChar = prefix![prefix!.index(prefix!.startIndex, offsetBy: j)]
                let currentChar = str[str.index(str.startIndex, offsetBy: j)]
                if prefixChar == currentChar {
                    temp.append(prefixChar)
                } else {
                    prefix = temp
                    break
                }
            }
            prefix = temp
        }
        return prefix!
    }
    
}
