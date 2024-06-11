//
//  Solution852.swift
//  LeetCode
//
//  Created by fate on 2024/5/30.
//

import Foundation

/**
 852. 山脉数组的峰顶索引
 
 符合下列属性的数组 arr 称为 山脉数组 ：
 arr.length >= 3
 存在 i（0 < i < arr.length - 1）使得：
 arr[0] < arr[1] < ... arr[i-1] < arr[i]
 arr[i] > arr[i+1] > ... > arr[arr.length - 1]
 给你由整数组成的山脉数组 arr ，返回满足 arr[0] < arr[1] < ... arr[i - 1] < arr[i] > arr[i + 1] > ... > arr[arr.length - 1] 的下标 i 。

 你必须设计并实现时间复杂度为 O(log(n)) 的解决方案。
 */

extension Solution {
    
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        
        if arr.isEmpty || arr.count < 3 {
            return -1
        }
        
        var start = 0
        var end = arr.count - 1
        
        while start + 1 < end {
            
            let mid = start + (end - start) / 2
            
            if arr[mid - 1] < arr[mid] {
                start = mid
            } else {
                end = mid - 1
            }
        }
        
        if arr[start] < arr[end] {
            return end
        } else {
            return start
        }
    }
}
