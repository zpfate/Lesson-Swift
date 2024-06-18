//
//  Solution88.swift
//  LeetCode
//
//  Created by fate on 2023/7/20.
//

import Foundation

/**
 88. 合并两个有序数组
 给你两个按 非递减顺序 排列的整数数组 nums1 和 nums2，另有两个整数 m 和 n ，分别表示 nums1 和 nums2 中的元素数目。

 请你 合并 nums2 到 nums1 中，使合并后的数组同样按 非递减顺序 排列。

 注意：最终，合并后数组不应由函数返回，而是存储在数组 nums1 中。为了应对这种情况，nums1 的初始长度为 m + n，其中前 m 个元素表示应合并的元素，后 n 个元素为 0 ，应忽略。nums2 的长度为 n 。
 
 */

extension Solution {
    
    
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        var l1 = m - 1
        var l2 = n - 1
        
        while l1 >= 0 || l2 >= 0 {
            
            if l2 < 0 || (l1 >= 0 && nums2[l2] < nums1[l1]) {
                nums1[l1 + l2 + 1] = nums1[l1]
                l1 -= 1
            } else {
                nums1[l1 + l2 + 1] = nums2[l2]
                l2 -= 1
            }
        }
        
        print("88. 合并两个有序数组:\(nums1)")
    }
    
    
    
    
//    
//    
//    func merge(_ nums1:[Int],_ nums2:[Int]) -> [Int] {
//        
//        
//        if nums1.isEmpty {
//            return nums2
//        }
//        
//        if nums2.isEmpty {
//            return nums1
//        }
//        
//        var m = nums1.count
//        var n = nums2.count
//        
//        var res = [Int](repeating: 0, count: m + n)
//        
//        while m >= 0 || n >= 0 {
//            
//            if m >= 0 && nums1[m] > nums2[n] {
//                res[m + n - 1] = nums1[m]
//                m -= 1
//            } else {
//                if n >= 0 {
//                    res[m + n - 1] = nums2[n]
//                    n -= 1
//                }
//            }
//        }
//        return res
//    }
//    
    
    func mergeAA(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1.append(contentsOf: nums2)
        print(nums1.sorted())
    }
    

    func mergeBB(_ nums1: [Int], _ nums2: [Int]) {
        var results = [Int](repeating: 0, count: nums1.count + nums2.count)
        var i = nums1.count - 1, j = nums2.count - 1
           while i >= 0 || j >= 0 {
               if j < 0 || (i >= 0 && nums1[i] > nums2[j]) {
                   results[i + j + 1] = nums1[i]
                   i -= 1
               } else {
                   results[i + j + 1] = nums2[j]
                   j -= 1
               }
           }
        print(results)
    }
    
    func mergeCC(_ nums1: [Int], _ nums2: [Int]) {
        var results = [Int](repeating: 0, count: nums1.count + nums2.count)
        var i = 0, j = 0
        while i < nums1.count || j < nums2.count {
            if j >= nums2.count || (i < nums1.count && nums1[i] < nums2[j]) {
                   results[i + j] = nums1[i]
                   i += 1
               } else {
                   results[i + j] = nums2[j]
                   j += 1
               }
           }
        print(results)
    }
    
    /// 力扣88题
    /**
     给你两个按 非递减顺序 排列的整数数组 nums1 和 nums2，另有两个整数 m 和 n ，分别表示 nums1 和 nums2 中的元素数目。

     请你 合并 nums2 到 nums1 中，使合并后的数组同样按 非递减顺序 排列。

     注意：最终，合并后数组不应由函数返回，而是存储在数组 nums1 中。为了应对这种情况，nums1 的初始长度为 m + n，其中前 m 个元素表示应合并的元素，后 n 个元素为 0 ，应忽略。nums2 的长度为 n 。
     */
    /// 1 2 3 0 0 0
    /// 2 5 6
    
    func mergeA(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        for index in 0..<n {
            nums1[m+index] = nums2[index]
        }
        nums1 = nums1.sorted();
        
    }
  
    func mergeB(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1, j = n - 1
        while i >= 0 || j >= 0 {
            if j < 0 || (i >= 0 && nums1[i] > nums2[j]) {
                nums1[i + j + 1] = nums1[i]
                i -= 1
            } else {
                nums1[i + j + 1] = nums2[j]
                j -= 1
            }
        }
    }
}
