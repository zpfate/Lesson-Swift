//
//  Solution35.swift
//  LeetCode
//
//  Created by fate on 2024/6/4.
//

import Foundation

/**
 35. 搜索插入位置： https://leetcode.cn/problems/search-insert-position/description/
 
 给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。

 请必须使用时间复杂度为 O(log n) 的算法。
 */

extension Solution {
    
    /// 思路:
    ///  二分查找
    
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        var l = 0
        var r = nums.count - 1
        
        while l  < r {
            
            let mid = l + (r - l) / 2
            
            if target > nums[mid]  {
                l = mid + 1
            } else {
                r = mid
            }
        }
        
        if nums[l] >= target {
            return l
        } else {
            return l + 1
        }
    }
}
