//
//  SolutionLCP61.swift
//  LeetCode
//
//  Created by fate on 2024/6/21.
//

import Foundation
/**
 LCP 61. 气温变化趋势
 https://leetcode.cn/problems/6CE719/description/
 */

extension Solution {
    
    func temperatureTrend(_ temperatureA: [Int], _ temperatureB: [Int]) -> Int {

            // check input
            if temperatureA.isEmpty || temperatureB.isEmpty {
                return 0
            }

            var maxDays = 0
            var current = 0
            let count = min(temperatureA.count, temperatureB.count)

            for i in 0..<count-1 {
                // [5,10,16, -6,15,11,3]
                // [16,22,23,23,25,3,-16]
                if (isSameTrend(temperatureA, temperatureB, index: i)) {
                    current += 1
                    maxDays = max(maxDays, current)
                } else {
                    current = 0
                }
            }
            return maxDays
        }

        func isSameTrend(_ temperatureA: [Int], _ temperatureB: [Int], index: Int) -> Bool {

            if temperatureA[index] < temperatureA[index+1] && temperatureB[index] < temperatureB[index+1] {
                return true
            }

            if temperatureA[index] == temperatureA[index+1] && temperatureB[index] == temperatureB[index+1] {
                return true
            }

            if temperatureA[index] > temperatureA[index+1] && temperatureB[index] > temperatureB[index+1] {
                return true
            }
            return false
        }
}
