//
//  Solution198.swift
//  LeetCode
//
//  Created by fate on 2024/5/16.
//

import Foundation




/**
 198. 打家劫舍
 你是一个专业的小偷，计划偷窃沿街的房屋。每间房内都藏有一定的现金，影响你偷窃的唯一制约因素就是相邻的房屋装有相互连通的防盗系统，如果两间相邻的房屋在同一晚上被小偷闯入，系统会自动报警。
 给定一个代表每个房屋存放金额的非负整数数组，计算你 不触动警报装置的情况下 ，一夜之内能够偷窃到的最高金额。
 */

extension Solution {
    
    ///  MAX [f(n-1) ,  f(n-2) + nums[n]]
    func rob(_ nums: [Int]) -> Int {
        
        if (nums.isEmpty) {
            return 0
        }
        if (nums.count == 1) {
            return nums[0]
        }

        
        var memo = [Int](repeating: 0, count: 2)
        memo[0] = nums[0]
        memo[1] = max(nums[0], nums[1])
        
        for i in 2..<nums.count {
            memo[i % 2] = max(memo[(i - 1) % 2], memo[(i - 2) % 2] + nums[i])
        }
        return memo[(nums.count - 1) % 2]
    }
    
    // Turple(a, b)
    

    func _rob(_ nums: [Int]) -> Int {
        
        
        // 如果数组只有一个房屋，直接返回该房屋的金额
        guard nums.count != 1 else {
            return nums[0]
        }
        
        // 初始化变量
        var first = nums[0] // 第一个房屋的金额
        var second = max(nums[0], nums[1]) // 前两个房屋中偷窃金额较大的
        
        // 遍历数组，从第三个房屋开始
        for i in 2..<nums.count {
            // 更新 first 和 second
            (first, second) = (second, max(nums[i] + first, second))
        }
        // 最终返回 second，即为能偷窃的最大金额
        return second
    }
    
}
