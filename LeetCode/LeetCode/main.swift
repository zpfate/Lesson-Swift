//
//  main.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/9/2.
//

import Foundation


let solution = Solution()

// ***** 排序 *****
//var nums = [3, 6, 8, 10, 1, 1, 2, 7, 4, 5, 9]
////Sort.quick(&nums, 0, nums.count - 1)
//InsertSort.sort(&nums)
//print(nums)


print("150.逆波兰表达式:\(solution.evalRPN(["4","13","5","/","+"]))")

// 18.四数之和
//print("四数之和: \(Solution.fourSum([2, 2, 2, 2, 2, 2], 8))")

// 198. 打家劫舍
print("198.打家劫舍: \(solution.rob2([ 2, 1,1, 2]))")



// 238.除自身以外数组的乘积
//Solution.productExceptSelf([1, 2, 3, 4])

// 303. 区域和检索 - 数组不可变
solution.retrieveSum()

//string_handle()


// 1588.所有奇数长度子数组的和
print("1588: \(solution.sumOddLengthSubarrays([1,4,2,5,3]))")





/// ********排序算法 ******
fileprivate var arr = [10, 2, 5, 3, 6, 1]
//BubbleSort.sort(arr)
//print("=============================")
//BubbleSort.sort2(arr)
//print("=============================")

//print(InsertSort.sort(arr))
//print(SelectSort.sort(arr))


var v1: ListNode? = ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9))))))
var v2: ListNode? = ListNode(9, ListNode(9, ListNode(9, ListNode(9))))
//Solution3.lengthOfLongestSubstring("dvdf")


//print(Solution9.isPalindrome(121))

//let result = Solution13().romanToInt("V")
//print(result)

var strs = ["test", "123", "abc", "longest", "prefix", "897"]

//print(strs.sorted())


//let longestCommonPrefix = Solution14().longestCommonPrefix("")


var nums1 = [1, 3, 5,]
let nums2 = [2, 4, 6,]
//Solution88().mergeAA(&nums1,3,  nums2, 3)

//print(Solution739().dailyTemperatures([73,74,75,71,69,72,76,73]))

let matrix = [[1]], target = 1

//print(Solution74().searchMatrix(matrix, target))
//
//
//print(Solution905().sortArrayByParity([3, 1, 2, 4]))



var v876: ListNode? = ListNode(7, ListNode(2, ListNode(4, ListNode(3))))

var v875: ListNode? = ListNode(5, ListNode(6, ListNode(4)))

