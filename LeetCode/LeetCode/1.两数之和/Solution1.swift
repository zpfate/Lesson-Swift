//
//  Solution1.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/9/2.
//

import Foundation

/// 实现一个算法，确定一个字符串 s 的所有字符是否全都不同。
extension Solution {
    
   func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        for (index, value) in nums.enumerated() {
            let minus = target - value;
            let firstIndex = nums.firstIndex(of: minus)
            if nums.contains(minus) && firstIndex != index {
                return [index, firstIndex!]
            }
        }
        return []
    }
    
    
    func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        
        // 创建字典, 数组值为key, 下标为value
        var dict = [Int : Int]()
        for (index, value) in nums.enumerated() {
            dict[value] = index;
        }
        
        // 遍历数组
        for (index, value) in nums.enumerated() {
            // 这里target - index为差值
            if let result = dict[target - value] {
                // 如果差值为key 可以从字典里取出值 则存在
                if index != result {
                    return [index, result];
                }
            }
        }
        return []
        
    }
    
    
//    func twoSum3(_ nums: [Int], _ target: Int) -> [Int] {
//         
//      
//        var left = 0
//        var right = nums.count - 1
//        
//        while left != right {
//            
//            if nums[left] + nums[right] != target {
//                
//            } else {
//                
//            }
//            
//        }
//        
//        
//        
//     }

}
