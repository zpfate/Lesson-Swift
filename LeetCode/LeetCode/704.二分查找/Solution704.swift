//
//  Solution704.swift
//  LeetCode
//
//  Created by fate on 2024/5/30.
//

import Foundation

/**
 704. 二分查找
 给定一个 n 个元素有序的（升序）整型数组 nums 和一个目标值 target  ，写一个函数搜索 nums 中的 target，如果目标值存在返回下标，否则返回 -1。
 */

extension Solution {

    func search(_ nums: [Int], _ target: Int) -> Int {
        return _binarySearch(nums, target)
    }

    func _binarySearch(_ nums: [Int], _ target: Int) -> Int {
        
        if nums.isEmpty {
            return -1
        }
        
        var l = 0
        var r = nums.count
        
        while l < r {
            let mid = l + (r - l) / 2
            
            if target > nums[mid] {
                l = mid + 1
            } else {
                r = mid
            }
        }
        
        if l < nums.count && nums[l] == target {
            return l
        } else {
            return -1
        }
        
    }
    
}
