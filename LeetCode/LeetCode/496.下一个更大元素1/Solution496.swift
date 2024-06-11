//
//  Solution496.swift
//  LeetCode
//
//  Created by fate on 2024/5/15.
//

import Foundation

/**
 496. 下一个更大元素 I
 nums1 中数字 x 的 下一个更大元素 是指 x 在 nums2 中对应位置 右侧 的 第一个 比 x 大的元素。
 给你两个 没有重复元素 的数组 nums1 和 nums2 ，下标从 0 开始计数，其中nums1 是 nums2 的子集。
 对于每个 0 <= i < nums1.length ，找出满足 nums1[i] == nums2[j] 的下标 j ，并且在 nums2 确定 nums2[j] 的 下一个更大元素 。如果不存在下一个更大元素，那么本次查询的答案是 -1 。
 返回一个长度为 nums1.length 的数组 ans 作为答案，满足 ans[i] 是如上所述的 下一个更大元素 。
 */

extension Solution {
    

    // 栈 + 哈希表
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        // 先寻找nums1[i] == nums2[j] 找出j
        
        if nums1.isEmpty || nums2.isEmpty {
            return []
        }
        
        var stack = [Int]()
        
        var map = [Int: Int]()
        
        for i in 0..<nums2.count {
            
            while !stack.isEmpty && nums2[i] > stack.last! {
                // 先求出下一个更大值
                // 并使用map保存
                map[stack.popLast()!] = nums2[i]
            }
            // 把nums2的元素压入栈
            stack.append(nums2[i])
        }
        
        var results = [Int](repeating: -1, count: nums1.count)
        
        for i in 0..<nums1.count {
            // 如果map不存在直接跳过
            guard let count = map[nums1[i]] else {
                continue
            }
            // 存在的话则赋值
            results[i] = count
        }
        return results
    }
}
