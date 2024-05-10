//
//  Solution905.swift
//  LeetCode
//
//  Created by fate on 2023/8/24.
//

import Foundation
/**
 
 */
extension Solution {
    
    func sortArrayByParity(_ nums: [Int]) -> [Int] {

        var results = nums
        var left = 0
        var right = nums.count - 1
        
        // [4, 1, 2, 3]
        while left < right {
            if results[left] % 2 == 0 {
             left += 1
            } else {
                let temp = results[right]
                results[right] = results[left]
                results[left] = temp
                right -= 1
            }
        }
        return results
    }
    
}
