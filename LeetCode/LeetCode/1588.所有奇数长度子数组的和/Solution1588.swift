//
//  Solution1588.swift
//  LeetCode
//
//  Created by fate on 2024/5/11.
//

import Foundation

/**
 1588. 所有奇数长度子数组的和
 给你一个正整数数组 arr ，请你计算所有可能的奇数长度子数组的和。
 子数组 定义为原数组中的一个连续子序列。
 请你返回 arr 中 所有奇数长度子数组的和 。
 */

extension Solution {
    
    // 1.首先计算出前缀和数组
    // 2. 奇数子数组的和 可以用 前缀和 奇数length下标 相减
    
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {

        var results = [Int](repeating: 0, count: arr.count + 1)
        
        for i in 0..<arr.count {
         results[i + 1] = results[i] + arr[i]
        }
        
        var length = 1
        var sum = 0
        
        while length < results.count {
            for i in 0..<(results.count - length) {
                sum += results[i + length] - results[i]
            }
            
            length += 2
        }
        return sum
    }
}
