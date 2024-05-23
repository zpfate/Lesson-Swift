//
//  Solution509.swift
//  LeetCode
//
//  Created by fate on 2024/5/16.
//

import Foundation

/**
 509. 斐波那契数
 斐波那契数 （通常用 F(n) 表示）形成的序列称为 斐波那契数列 。该数列由 0 和 1 开始，后面的每一项数字都是前面两项数字的和。也就是：

 F(0) = 0，F(1) = 1
 F(n) = F(n - 1) + F(n - 2)，其中 n > 1
 给定 n ，请计算 F(n) 。
 */


extension Solution {
    
    
    func fib(_ n: Int) -> Int {
        
        // f(n) = f(n-1) + f(n-2)
        if (n < 2) {
            return n
        }
        var memo = [Int](repeating: 0, count: 2)
        memo[0] = 0
        memo[1] = 1
        
        for i in 2...n {
            memo[i % 2] = memo[(i - 1) % 2] + memo[(i - 2) % 2]
        }
        return memo[n % 2]
    }
    
}
