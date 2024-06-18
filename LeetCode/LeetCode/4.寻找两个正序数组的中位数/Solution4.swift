//
//  Solution4.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/11/18.
//

import Foundation

/**
 给定两个大小分别为 m 和 n 的正序（从小到大）数组 nums1 和 nums2。请你找出并返回这两个正序数组的 中位数 。
 算法的时间复杂度应该为 O(log (m+n)) 。
 */
extension Solution {
    
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
        
        // 思路:
        // 因为是log(m+n) 猜测是二分查找, 数组 + target
        // 所以应该是nums1和nums2都需要二分查找
        // 如果遍历nums1,
        
        
        
        var l1 = 0
        var r1 = nums1.count - 1
        
        var l2 = 0
        var r2 = nums2.count - 1
        
        
        
        
        
        
//        
//        var target = 0
//        if nums1[l1] > nums2[r2] {
//            target = nums
//        }
//        
//        
//        while l < r {
//            
//            let mid = l + (r - l) / 2
//            
//        }
        
        return 0
        
    }
    
}
