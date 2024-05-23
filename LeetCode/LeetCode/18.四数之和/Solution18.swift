//
//  extension18.swift
//  LeetCode
//
//  Created by fate on 2024/5/8.
//

import Foundation

/***
 18.四数之和
 给你一个由 n 个整数组成的数组 nums ，和一个目标值 target 。
 请你找出并返回满足下述全部条件且不重复的四元组 [nums[a], nums[b], nums[c], nums[d]] （若两个四元组元素一一对应，则认为两个四元组重复）
 0 <= a, b, c, d < n
 a、b、c 和 d 互不相同
 nums[a] + nums[b] + nums[c] + nums[d] == target
 你可以按 任意顺序 返回答案 。
 ***/

extension Solution {
    
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        
        // 判空
        guard nums.count>=4 else {
            return []
        }
        
        // 先排序
        let sorted = nums.sorted()
        var results = [[Int]]()
        let count = sorted.count
        
        for i in 0..<count-3 {
            
            if i > 0, sorted[i] == sorted[i - 1] {
                continue
            }
            
            for j in (i+1)..<count-2 {
                
                if j > i + 1 &&  sorted[j] == sorted[j - 1] {
                    continue
                }
                /// - 2   -1  0  1  1  1 5  5  5
                var left = j + 1
                var right = count - 1
                while left < right {
                    
                    let sum = sorted[i] + sorted[j] + sorted[left] + sorted[right]
                    
                    if (sum == target) {
                        
                        results.append([sorted[i], sorted[j], sorted[left], sorted[right]])
                        left += 1
                        right -= 1
                        
                        while left < right, sorted[left] == sorted[left - 1] {
                            left += 1
                        }
                        while left < right, sorted[right] == sorted[right + 1] {
                            right -= 1
                        }
                    } else if (sum > target) {
                        right -= 1
                        while left < right, sorted[right] == sorted[right + 1] {
                            right -= 1
                        }
                    } else {
                        left += 1
                        while left < right, sorted[left] == sorted[left - 1] {
                            left += 1
                        }
                    }
                }
            }
        }
        
        return results
    }
}
