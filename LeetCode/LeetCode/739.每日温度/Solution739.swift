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
        var results = [Int](repeating: 0, count: temperatures.count)
        var stack = [Int]()
        for i in 0..<temperatures.count {
            while !stack.isEmpty && temperatures[i] > temperatures[stack.last!] {
                let last = stack.removeLast()
                results[last] = i - last
            }
            stack.append(i)
        }
        return results
    }
    
}
