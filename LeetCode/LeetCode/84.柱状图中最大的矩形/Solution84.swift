//
//  Solution84.swift
//  LeetCode
//
//  Created by fate on 2024/5/28.
//

import Foundation

/**
 84. 柱状图中最大的矩形
 给定 n 个非负整数，用来表示柱状图中各个柱子的高度。每个柱子彼此相邻，且宽度为 1 。

 求在该柱状图中，能够勾勒出来的矩形的最大面积。
 */


// 现在做题的问题
// 审题后, 不管是杀鸡刀还是牛刀, get后,
// 如果是中等难度可能除了杀鸡牛刀, 还需要绕一下, 可能是其他方法的结合
// 困难难度的话, 难以找出和匹配手段的联系, 有牛刀,但是没有破题思路 缺一块


extension Solution {
    
    func largestRectangleArea(_ heights: [Int]) -> Int {
        
      
        /// 找比当前元素小的
        if heights.isEmpty {
            return 0
        }

        let len = heights.count

        var stack = [Int](repeating: 0, count: len)

        var leftLimits = [Int](repeating: -1, count: len)
        var rightLimits = [Int](repeating: len, count: len)

        for i in 0..<heights.count {

            while !stack.isEmpty && heights[i] < heights[stack.last!] {
                let index = stack.popLast()!
                rightLimits[index] = i
            }
            stack.append(i)
        }

        stack.removeAll()
        for i in (0..<heights.count).reversed() {
            while !stack.isEmpty && heights[i] < heights[stack.last!] {
                let index = stack.popLast()!
                leftLimits[index] = i
            }
            stack.append(i)
        }
//        [2,1,5,6,2,3]

        var area = 0
        for i in 0..<len {
            let leftLimit = leftLimits[i]
            let rightLimit = rightLimits[i]
            let width = rightLimit - leftLimit - 1
            area = max(width * heights[i], area)
        }
        return area
    
    }
}
