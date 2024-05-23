//
//  Solution42.swift
//  LeetCode
//
//  Created by fate on 2024/5/13.
//

import Foundation

/***
 42. 接雨水
 给定 n 个非负整数表示每个宽度为 1 的柱子的高度图，计算按此排列的柱子，下雨之后能接多少雨水。
 */

extension Solution {
    
    // 双指针
    //
    
    func trap(_ height: [Int]) -> Int {

        // 双指针
        var left = 0
        var right = height.count - 1
        
        // 面积
        var acreage = 0
        
        // 最大值
        var maxLeft = 0
        var maxRight = 0
        
        while left < right {
            
            if height[left] < height[right] {
                
                if height[left] >= maxLeft {
                    maxLeft = height[left]
                } else {
                    acreage += maxLeft - height[left]
                }
                left += 1

            } else {
                if height[right] >= maxRight {
                    maxRight = height[right]
                } else {
                    acreage += maxRight - height[right]
                }
                right -= 1
            }
        }
        
        return acreage
    }
}
