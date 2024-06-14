//
//  Solution303.swift
//  LeetCode
//
//  Created by fate on 2024/5/10.
//

import Foundation

/***
 303. 区域和检索 - 数组不可变
 给定一个整数数组  nums，处理以下类型的多个查询:

 计算索引 left 和 right （包含 left 和 right）之间的 nums 元素的 和 ，其中 left <= right
 实现 NumArray 类：

 NumArray(int[] nums) 使用数组 nums 初始化对象
 int sumRange(int i, int j) 返回数组 nums 中索引 left 和 right 之间的元素的 总和 ，包含 left 和 right 两点（也就是 nums[left] + nums[left + 1] + ... + nums[right] )
 
 */


extension Solution {
    
//    func retrieveSum() -> Void {
//        let obj = NumArray([-2,0,3,-5,2,-1])
//        let ret_1: Int = obj.sumRange(0, 2)
//        print(ret_1)
//    }
}


class NumArray {
    
    
    var sumArr: [Int]
    
    init(_ nums: [Int]) {
        
        sumArr = [Int](repeating: 0, count: nums.count + 1)
        for i in 0..<nums.count {
            sumArr[i + 1] = sumArr[i] + nums[i]
        }
    }
        
    func sumRange(_ left: Int, _ right: Int) -> Int {

        return sumArr[right + 1] - sumArr[left]
    }
}

extension Solution {

    
    
}
