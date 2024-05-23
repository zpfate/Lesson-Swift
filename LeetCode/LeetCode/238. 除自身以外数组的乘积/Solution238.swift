//
//  Solution238.swift
//  LeetCode
//
//  Created by fate on 2024/5/9.
//

import Foundation

/***
 238.给你一个整数数组 nums，返回 数组 answer ，其中 answer[i] 等于 nums 中除 nums[i] 之外其余各元素的乘积 。
 题目数据 保证 数组 nums之中任意元素的全部前缀元素和后缀的乘积都在  32 位 整数范围内。
 请 不要使用除法，且在 O(n) 时间复杂度内完成此题。
 ***/

extension Solution {
    
    /***
     思路:
        1. 其实就是等于左右两边元素的乘积
        2. 不能使用除法,因为当元素的是0的时候无法进行
     */
    
   func productExceptSelf(_ nums: [Int]) -> [Int] {
       
       
       
       
       let count = nums.count
       var answer = [Int](repeating: 1, count: nums.count)
       
       // 先算左边乘积
       for i in 1..<count {
           answer[i] = answer[i - 1] * nums[i - 1]
       }
       
       
       // 计算右边乘积
       var rightProduct = 1
       for j in (0..<count).reversed() {

           // 左乘积 * 右乘积
           answer[j] = answer[j] * rightProduct
           rightProduct *= nums[j]

       }
       
       return answer
   }
    
}
