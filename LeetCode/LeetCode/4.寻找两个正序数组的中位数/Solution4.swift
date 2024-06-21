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
        // 如果遍历nums1
        
        // O(m + n)
        let res = merge(nums1, nums2)
        let count = nums1.count + nums2.count
        
        if count % 2 == 0  {
            return Double((res[count / 2] + res[count / 2 - 1])) / 2.0
        }
        
        return Double(res[count / 2])
    }
    
    
    func merge(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        // m和n写成下标
        var m = nums1.count - 1
        var n = nums2.count - 1
        
        var res = [Int](repeating: 0, count: m + n + 2)
        while m >= 0 || n >= 0 {
            
            if n < 0 || (m >= 0 && nums1[m] > nums2[n]) {
                res[m + n + 1] = nums1[m]
                m -= 1
            } else {
                res[m + n + 1] = nums2[n]
                n -= 1
            }
        }
        return res
    }
    
}
