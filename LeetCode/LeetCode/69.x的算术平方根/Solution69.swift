//
//  Solution69.swift
//  LeetCode
//
//  Created by fate on 2023/8/24.
//

import Foundation


extension Solution {
    
    func mySqrt(_ x: Int) -> Int {
        
        var start = 0
        var end = x
        
        /// 9 - 4
        while (start + 1 < end) {
            let middle = start + (end - start) / 2
            let value = x / middle
            if (value > middle) {
                start = middle
            } else if (value < middle) {
                end = middle
            } else {
                return value
            }
        }
        if (x / end < end) {
            return start
        }
        return end
    }

//    func mySqrt(_ x: Int) -> Int {
//
//        var value = (0 + x - 0) / 2
//        while !((x-1 < (value * value)) && (x+1 > (value * value))) {
//
//        }
//    }
    
}
