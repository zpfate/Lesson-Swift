//
//  Solution798.swift
//  LeetCode
//
//  Created by fate on 2023/7/25.
//

import Foundation


extension Solution {
    
    /// [73,74,75,71,69,72,76,73]
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        
        if (temperatures.count < 2) {
            return [0]
        }
        
        // 先初始化
        var results = [Int](repeating: 0, count: temperatures.count)
        // 初始化栈
        var stack = [Int]()
        
        for i in 0..<temperatures.count {
            
            while !stack.isEmpty && temperatures[i] > temperatures[stack.last!] {
                
                // 推出最后一个下标
                let last = stack.removeLast()
                // 获取下标的差值 == 指对于第x天 下一个更高温度出现
                results[last] = i - last
            }
            // 压下标入栈
            stack.append(i)
        }
        return results
    }
    
}
