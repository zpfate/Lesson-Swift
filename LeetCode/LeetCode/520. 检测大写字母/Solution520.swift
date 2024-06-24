//
//  Solution520.swift
//  LeetCode
//
//  Created by fate on 2024/6/23.
//

import Foundation
/**
 520. 检测大写字母
 https://leetcode.cn/problems/detect-capital/description/
 
 我们定义，在以下情况时，单词的大写用法是正确的：

 全部字母都是大写，比如 "USA" 。
 单词中所有字母都不是大写，比如 "leetcode" 。
 如果单词不只含有一个字母，只有首字母大写， 比如 "Google" 。
 给你一个字符串 word 。如果大写用法正确，返回 true ；否则，返回 false 。
 */

extension Solution {
    
    func detectCapitalUse(_ word: String) -> Bool {
        
        
        var uppercaseCount = 0
        
        for c in word {
            
            if c.isUppercase {
                uppercaseCount += 1
            }
        }
            
        switch uppercaseCount {
        case 0, word.count:
            return true
        case 1:
            return word.first!.isUppercase
        default:
            return false
        }
        
            
//        if word.isEmpty {
//            return false
//        }
//    
//        let isFirstCapital = word.prefix(1) == word.prefix(1).capitalized
//        
//        var isAllCapital = isFirstCapital
//        if word.count > 1 {
//            let second = String(word[word.index(word.startIndex, offsetBy: 1)])
//            isAllCapital = second == second.capitalized
//        }
//        
//        for i in 1..<word.count {
//            
//            let current = String(word[word.index(word.startIndex, offsetBy: i)])
//            
//            let currentIsCapital = current == current.capitalized
//            
//            if isFirstCapital {
//                
//                if (i != 1) {
//                    if currentIsCapital && !isAllCapital {
//                        return false
//                    }
//                    
//                    if !currentIsCapital && isAllCapital {
//                        return false
//                    }
//                }
//                
//            } else {
//                
//                if currentIsCapital {
//                    return false
//                }
//            }
//            
//        }
//        
//        return true
        
    }
}

