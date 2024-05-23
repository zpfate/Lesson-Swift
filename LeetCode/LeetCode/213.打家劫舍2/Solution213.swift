//
//  Solution.swift
//  LeetCode
//
//  Created by fate on 2024/5/16.
//

import Foundation

/**
 213. 打家劫舍 II
 你是一个专业的小偷，计划偷窃沿街的房屋，每间房内都藏有一定的现金。这个地方所有的房屋都 围成一圈 ，这意味着第一个房屋和最后一个房屋是紧挨着的。同时，相邻的房屋装有相互连通的防盗系统，如果两间相邻的房屋在同一晚上被小偷闯入，系统会自动报警 。
 给定一个代表每个房屋存放金额的非负整数数组，计算你 在不触动警报装置的情况下 ，今晚能够偷窃到的最高金额。
 */
extension Solution {
    
    ///  MAX [f(n-1) ,  f(n-2) + nums[n]]
    
    func rob2(_ nums: [Int]) -> Int {
        
        if (nums.isEmpty) {
            return 0
        }
        
        if (nums.count == 1) {
            return nums[0]
        }
        return max(rob(Array(nums[1...nums.count-1])), rob(Array(nums[0...nums.count-2])))
    }
    
}
