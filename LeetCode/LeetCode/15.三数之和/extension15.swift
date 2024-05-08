//
//  extension15.swift
//  LeetCode
//
//  Created by fate on 2024/5/6.
//

import Foundation


extension Solution {
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        
        guard nums.count > 2 else {
            return []
        }
        
        /// 先给数组排序
        let sorted = nums.sorted()
        
        var results = [[Int]]()
        var i = 0
     
        while i < sorted.count - 2 {
            
            /// 去掉相同的
            if i > 0, sorted[i] == sorted[i - 1] {
                i += 1
                continue
            }
            
            var left = i + 1
            var right = sorted.count - 1
            
            while left < right {
                let target = sorted[i] + sorted[left] + sorted[right]
                if (target == 0) {
                    /// 去掉相同的
                    if (left - 1 > i && sorted[left - 1] == sorted[left]) {
                        left += 1
                        continue
                    }
                    results.append([sorted[i] ,sorted[left] ,sorted[right]])
                    left += 1
                    right -= 1
                } else if (target > 0) {
                    right -= 1
                } else {
                    left += 1
                }
            }
            i += 1
        }
        return results
    }
    
    
    func threeSum2(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 2 else { return [] }
        var res: [[Int]] = []
        let sorted = nums.sorted()
        var i = 0
        
        while i < sorted.count - 2 {
            if i > 0, sorted[i] == sorted[i - 1] {
                i += 1
                continue
            }
            
            var l = i + 1
            var r = sorted.count - 1
            
            while i < sorted.count - 2 {
                while l < r {
                    let target = sorted[i] + sorted[l] + sorted[r]
                    if (target == 0) {
                        if l - 1 > i, sorted[l] == sorted[l - 1] {
                            l += 1
                            continue
                        }
                        res.append([sorted[i], sorted[l], sorted[r]])
                        l += 1
                    } else if (target < 0) {
                        l += 1
                    } else {
                        r -= 1
                    }
                }
                i += 1
            }
        }
        
        return res
    }

}
