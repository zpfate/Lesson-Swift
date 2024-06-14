//
//  Solution62.swift
//  LeetCode
//
//  Created by fate on 2024/6/12.
//

import Foundation

extension Solution {
    
    func uniquePaths(_ m: Int, _ n: Int) -> Int {

        // state: dp[i][j] 表示[0, 0]到[i, j]共有 dp[i][j] 条不同的路径
        // status function: dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
        // condition: dp[0][0] = 1  dp[0][j] = 1 dp[i][0] = 1
        // solution: dp[m - 1][n - 1]

        if m == 0 || n == 0 {
           return 1
        }

        var dp = [[Int]](repeating: [Int](repeating: 1, count: n), count: m)
//        dp[0][0] = 1
//        dp[0][1] = 1
//        dp[1][0] = 1
        
        for i in (1..<m-1).reversed() {
            for j in 1..<n {
                dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
            }
        }
        return dp[m - 1][n - 1]
    }
}
