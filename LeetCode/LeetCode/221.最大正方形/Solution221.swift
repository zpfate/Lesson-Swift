//
//  Solution224.swift
//  LeetCode
//
//  Created by fate on 2024/6/14.
//

import Foundation

/**
 221. 最大正方形
 https://leetcode.cn/problems/maximal-square/description/
 
 在一个由 '0' 和 '1' 组成的二维矩阵内，找到只包含 '1' 的最大正方形，并返回其面积。
 */

extension Solution {
    
    func maximalSquare(_ matrix: [[Character]]) -> Int {
            
        // state: dp[i][j] 代表[0, 0]到[i, j]二维矩阵的最大正方形面积
        // state: dp[i][j] 代表[0, 0]到[i, j]二维矩阵中包含[i, j]点最大正方形面积
        // state: dp[i][j] 代表以[i, j]为右下角的正方形中的最大正方形面积
        // state: dp[i][j] 代表以[i, j]为右下角的正方形中的最大边长
        // status function: dp[i][j] = matrix[i][j] === 0 ? 0 : sqrt(min(dp[i - 1, j], dp[i, j - 1], dp[i - 1][j - 1])) + 1
        // status function: dp[i][j] = matrix[i][j] === 0 ? 0 : (min(dp[i - 1, j], dp[i, j - 1], dp[i - 1][j - 1])) + 1
        // condition: dp[0][0] dp[i][0] dp[0][j]
        // solution: max(dp[0 -> m - 1][0 -> n - 1])^2

        if matrix.isEmpty {
            return 0
        }

        let m = matrix.count
        let n = matrix[0].count

        var dp = [[Int]](repeating:[Int](repeating:0, count: n), count: m)
        dp[0][0] = matrix[0][0] == "1" ? 1 : 0
        var square = 0

        for i in 1..<m {
            dp[i][0] = matrix[i][0] == "1" ? 1 : 0
            square = max(square, dp[i][0])
        }

        for j in 1..<n {
            dp[0][j] = matrix[0][j] == "1" ? 1 : 0
            square = max(square, dp[0][j])
        }

        for i in 1..<m {
            for j in 1..<n {
                dp[i][j] = matrix[i][j] == "0" ? 0 : min(dp[i][j - 1], min(dp[i - 1][j], dp[i - 1][j - 1])) + 1
                square = max(square, dp[i][j])
            }
        }
        return square * square
    }
}
