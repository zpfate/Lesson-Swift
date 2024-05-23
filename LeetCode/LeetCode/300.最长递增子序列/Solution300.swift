//
//  Solution300.swift
//  LeetCode
//
//  Created by fate on 2024/5/22.
//

import Foundation

/**
 300. 最长递增子序列
 
 给你一个整数数组 nums ，找到其中最长严格递增子序列的长度。
 子序列 是由数组派生而来的序列，删除（或不删除）数组中的元素而不改变其余元素的顺序。例如，[3,6,2,7] 是数组 [0,3,1,6,2,2,7] 的
 子序列
 。
 */

extension Solution {
    
    // dp[i] 表示以 nums[i]结尾的最长递增子序列长度
    func lengthOfLIS(_ nums: [Int]) -> Int {
        
        // max(dp[0...(i-1)])
        if nums.count <= 1 {
            return nums.count
        }
        
        var dp: [Int] = [Int](repeating: 1, count: nums.count)
        
        var res = 1
        for i in 0..<nums.count {
            for j in 0..<i {
                if (nums[i] > nums[j]) {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
            res = max(res, dp[i])
        }
        return res
    }
    
}
