//
//  InsertSort.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/11/18.
//

import Foundation

/// 插入排序
/// 锚定第一个元素,将后面无序区的元素插入到有序区合适的位置
/// 时间复杂度O(n²)
/// 稳定
class InsertSort {

  class func sort(_ list: [Int]) -> [Int] {
      var tempArr = list
      /// 第一个作为有序的 作为对比
        for i in 1..<list.count {
            let value = list[i]
            var j = i - 1
            /// 与前面的有序数组对比
            while j >= 0 && value < tempArr[j] {
                tempArr[j + 1] = tempArr[j]
                j -= 1
            }
            /// 将当前对比的数字放在正确的位置
            tempArr[j+1] = value
            print_array(tempArr, i)
        }
      return tempArr
    }
}
