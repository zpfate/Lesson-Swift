//
//  Sort.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/11/18.
//

import Foundation
/// 冒泡排序
/// 时间复杂度o(n²)
/// 稳定
class BubbleSort {
    
    func sort(_ arr: [Int]) -> [Int] {
        var list = arr
        /// 外层循环 i表示扫描元素的个数
        /// i > 1 只有一个元素的时候必然是有序的
        for i in (1...list.count).reversed() {
            var swapped = false /// 是否发生交换
            for j in 1..<i {
                if list[j-1] > list[j] {
                    list.swapAt(j, j-1)
                    swapped = true
                }
                print_array(list, j)
            }
            if !swapped {
                break /// 如果没有发生交换结束循环
            }
        }
        return list
    }
    
    func sort2(_ arr: [Int]) -> [Int] {
        var list = arr
        for i in 0..<list.count {
            for j in 0..<list.count {
                if list[i] < list[j] {
                    list.swapAt(i, j)
                }
                print_array(list, j+1)
            }
        }
        return list
    }

    
}
