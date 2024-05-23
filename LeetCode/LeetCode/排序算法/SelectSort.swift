//
//  SelectSort.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/11/19.
//

import Foundation
/// 选择排序
/// 每次选择无序区的最小(大)的元素插入到有序区的后面
/// 时间复杂度O(n²)
/// 稳定
class SelectSort {
    
   func sort(_ list: [Int]) -> [Int] {
        var tempArr = list
        
        var min: Int?
        for i in 0..<list.count {
            min = i
            for j in (i+1)..<list.count {
                if tempArr[min!] > tempArr[j] {
                    min = j
                }
            }
            tempArr.swapAt(i, min!)
            print_array(tempArr, i)
        }
       return tempArr
    }
}
