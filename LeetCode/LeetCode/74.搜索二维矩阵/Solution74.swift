//
//  Solution74.swift
//  LeetCode
//
//  Created by fate on 2023/8/16.
//

import Foundation

/**
 74. 搜索二维矩阵
 给你一个满足下述两条属性的 m x n 整数矩阵：

 每行中的整数从左到右按非递减顺序排列。
 每行的第一个整数大于前一行的最后一个整数。
 给你一个整数 target ，如果 target 在矩阵中，返回 true ；否则，返回 false 。
 
 */

extension Solution {
    
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        guard !matrix.isEmpty && matrix.first!.first! <= target && matrix.last!.last! >= target else {
            return false
        }
        let row = matrix.first!.count
        let col = matrix.count
        
        var left = 0
        var right = row * col - 1
        
        while left <= right {
            let mid = left + (right - left) / 2
            let midValue = matrix[mid/row][mid%row]
            if midValue > target {
                right = mid - 1
            } else if midValue < target {
                left = mid + 1
            } else {
                return true
            }
        }
        return false
    }
}
