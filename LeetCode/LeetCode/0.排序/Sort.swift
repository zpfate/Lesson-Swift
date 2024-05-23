//
//  QuickSort.swift
//  LeetCode
//
//  Created by fate on 2024/5/6.
//

import Foundation

class Sort {
    
    /*** 
     冒泡排序
     两两比较待排序的元素，交换不满足顺序的那对元素，直到整个表都满足次序要求为止
     ***/
//    func bubble1(_ nums: inout [Int]) -> Void {
//        /// 外层循环 i表示扫描元素的个数
//        /// i > 1 只有一个元素的时候必然是有序的
//        for i in (1...nums.count).reversed() {
//            var swapped = false /// 是否发生交换
//            for j in 1..<i {
//                if nums[j-1] > nums[j] {
//                    nums.swapAt(j, j-1)
//                    swapped = true
//                }
//            }
//            if !swapped {
//                break /// 如果没有发生交换结束循环
//            }
//        }
//    }
    
    
    func bubble2(_ nums: inout [Int]) -> Void {
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if nums[i] < nums[j] {
                    nums.swapAt(i, j)
                }
            }
        }
    }
    
    /***
     插入排序
     锚定第一个元素,将后面无序区的元素插入到有序区合适的位置
     ***/
    
    func insert(_ nums: inout [Int]) -> Void {
    /// 第一个作为有序的 作为对比
        for i in 1..<nums.count {
            let value = nums[i]
            var j = i - 1
            /// 与前面的有序数组对比
            while j >= 0 && value < nums[j] {
                nums[j + 1] = nums[j]
                j -= 1
            }
            /// 将当前对比的数字放在正确的位置
            nums[j+1] = value
        }
    }
    
    /***
     选择排序
     每趟从待排序的序列中选出最小的元素，顺序放在已排序的序列末尾，直到全部排序结束为止
     ***/
    func select(_ nums: inout [Int]) -> Void {
        
        var min: Int?
        for i in 0..<nums.count {
            min = i
            for j in (i+1)..<nums.count {
                if nums[min!] > nums[j] {
                    min = j
                }
            }
            nums.swapAt(i, min!)
        }
    }
    
    
    /// 快速排序 分治法
    /// 快速排序
    func quick(_ nums: inout [Int], _ low: Int, _ high: Int) -> Void {
        
       if (low < high) {
           let pivot = partition(&nums, low, high)
           quick(&nums, low, pivot - 1)
           quick(&nums, pivot + 1, high)
       }
    }

    func partition(_ nums: inout [Int], _ low: Int, _ high: Int) -> Int {
        
        let pivot = nums[high]
        var i = low - 1
        for j in low..<high {
            if nums[j] < pivot {
                i += 1
                nums.swapAt(i, j)
            }
        }
        nums.swapAt(i + 1, high)
        return i + 1
    }
    
}
