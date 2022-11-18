//
//  InsertSort.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/11/18.
//

import Foundation

class InsertSort {
    
  class func sort(_ list: [Int]) -> [Int] {
        
      var arr:[Int] = [list[0]]
        for i in 1..<list.count {
            let value = list[i]
            for j in (0..<i) {
                if value < arr[j] {
                    arr.insert(value, at: j)
                    break
                }
            }
            printSortArr(arr, i)
        }
      return arr
    }
}
