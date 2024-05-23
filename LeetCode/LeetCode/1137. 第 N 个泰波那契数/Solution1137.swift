//
//  Solution1137.swift
//  LeetCode
//
//  Created by fate on 2024/5/16.
//

import Foundation

/**
 1137. 第 N 个泰波那契数
 泰波那契序列 Tn 定义如下：
 T0 = 0, T1 = 1, T2 = 1, 且在 n >= 0 的条件下 Tn+3 = Tn + Tn+1 + Tn+2
 给你整数 n，请返回第 n 个泰波那契数 Tn 的值。
 */
extension Solution {
    
    func tribonacci(_ n: Int) -> Int {
        /// f(n) = f(n-3) + f(n-2) + f(n-1)
        if (n < 2) {
            return n
        }
        
        if (n == 2) {
            return 1
        }
        
        var memo = [Int](repeating: 0, count: 3)
        memo[0] = 0
        memo[1] = 1
        memo[2] = 1
        
        for i in 3...n {
            memo[i % 3] = memo[(i - 1) % 3] + memo[(i - 2) % 3] + memo[(i - 3) % 3]
        }
        return memo[n % 3]
    }
    
}
