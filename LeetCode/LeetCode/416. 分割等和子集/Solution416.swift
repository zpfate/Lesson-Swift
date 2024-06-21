//
//  Solution416.swift
//  LeetCode
//
//  Created by fate on 2024/6/19.
//

/**
 416. 分割等和子集
 https://leetcode.cn/problems/partition-equal-subset-sum/description/
 
 给你一个 只包含正整数 的 非空 数组 nums 。请你判断是否可以将这个数组分割成两个子集，使得两个子集的元素和相等。
**/

import Foundation


extension Solution {
    
    
    func canPartition(_ nums: [Int]) -> Bool {
        
        // state: dp[i][j]表示前i个数选择和为j是否存在
        // 1 5 dp[1][6]代表前1个数和为6 = dp[0][6] || dp[0][6 - 5]
        // status function: dp[i][j] = dp[i - 1][j] ||  dp[i-1][j - nums[i]]
        // condition: dp[i][0] = true  dp[0][j] = false
        // solution: dp[nums.count - 1][sum/2]
        
        if nums.isEmpty || nums.count == 1 {
          return false
        }

        var sum = 0
        for value in nums {
          sum += value
        }
        if sum % 2 != 0 {
          return false
        }

        let count = nums.count
        var dp = [[Bool]] (repeating: [Bool](repeating: false, count: sum + 1), count: 2)


        dp[0][0] = true

        for i in 1...count {
          // count 变成2
          dp[i % 2][0] = true

          for j in 1...sum {
              if j >= nums[i - 1] {
                  dp[i % 2][j] = dp[(i-1) % 2][j] || dp[(i-1) % 2][j - nums[i-1]]
              } else {
                  dp[i % 2][j] = dp[(i-1) % 2][j]
              }
          }
        }
        return dp[count % 2][sum/2]
    }
    
    
    func canPartitionOptimized(_ nums: [Int]) -> Bool {
        
        
        return true
    }
    
}
