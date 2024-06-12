//
//  Solution34.swift
//  LeetCode
//
//  Created by fate on 2024/6/11.
//

import Foundation

/**
 34. 在排序数组中查找元素的第一个和最后一个位置
 https://leetcode.cn/problems/find-first-and-last-position-of-element-in-sorted-array/description/
 
 给你一个按照非递减顺序排列的整数数组 nums，和一个目标值 target。请你找出给定目标值在数组中的开始位置和结束位置。

 如果数组中不存在目标值 target，返回 [-1, -1]。

 你必须设计并实现时间复杂度为 O(log n) 的算法解决此问题。
 */

extension Solution {
    
    // 思路:
    // 二分法可以查找到target
    // 根据二分查找 一次找右边界 一次找左边界
    
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        
        if nums.isEmpty {
            return [-1, -1]
        }
        
        let l = _binarySearchLeft(nums, target)
        let r = _binarySearchRight(nums, target)
        return [l, r]
    }
    
    // 二分查找左边界
    func _binarySearchLeft(_ nums: [Int], _ target: Int) -> Int {
        
        var l = 0
        var r = nums.count - 1
        while l < r {
            let mid = l + (r - l) / 2
            
            if target > nums[mid] {
                l = mid + 1
            } else {
                r = mid
            }
        }
        if nums[l] == target {
            return l
        }
        return -1
    }
    
    
    func _binarySearchRight(_ nums: [Int], _ target: Int) -> Int {
        
        var l = 0
        var r = nums.count - 1

        while l + 1 < r  {
            let mid = l + (r - l) / 2
            if target < nums[mid] {
                r = mid - 1
            } else {
                l = mid
            }
        }
        if nums[r] == target {
            return r
        }
        
        if nums[l] == target {
            return l
        }
        
        return -1
    }
}
