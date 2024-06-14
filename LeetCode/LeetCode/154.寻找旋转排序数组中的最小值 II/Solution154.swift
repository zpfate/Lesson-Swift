//
//  Solution154.swift
//  LeetCode
//
//  Created by fate on 2024/6/12.
//

import Foundation

/**
 154. 寻找旋转排序数组中的最小值 II
 https://leetcode.cn/problems/find-minimum-in-rotated-sorted-array-ii/description/
 
 已知一个长度为 n 的数组，预先按照升序排列，经由 1 到 n 次 旋转 后，得到输入数组。例如，原数组 nums = [0,1,4,4,5,6,7] 在变化后可能得到：
 若旋转 4 次，则可以得到 [4,5,6,7,0,1,4]
 若旋转 7 次，则可以得到 [0,1,4,4,5,6,7]
 注意，数组 [a[0], a[1], a[2], ..., a[n-1]] 旋转一次 的结果为数组 [a[n-1], a[0], a[1], a[2], ..., a[n-2]] 。

 给你一个可能存在 重复 元素值的数组 nums ，它原来是一个升序排列的数组，并按上述情形进行了多次旋转。请你找出并返回数组中的 最小元素 。

 你必须尽可能减少整个过程的操作步骤。
 */

extension Solution {
    
    // 总体来说还是一个升序数组
    // 旋转完之后 还是两个 部分升序 的段落
    
    func findMinTwo(_ nums: [Int]) -> Int {

        var l = 0
        var r = nums.count - 1
        
        if nums[l] < nums[r] {
            return nums[l]
        }
        
        while l + 1 < r {
            
            let mid = l + (r - l) / 2
            
            if nums[mid] > nums[l] {
                l = mid
            } else {
                r = mid
            }
        }
        
        if nums[l] > nums[r] {
            return nums[r]
        }
        return nums[l]
    }
}
