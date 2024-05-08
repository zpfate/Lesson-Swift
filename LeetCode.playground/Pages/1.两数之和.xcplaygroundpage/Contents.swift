import UIKit
import Foundation
/// Definition for singly-linked list.
///



func merge(_ nums1:[Int],_ nums2:[Int]) -> [Int] {
    if nums1.isEmpty {
        return nums2
    }
    
    if nums2.isEmpty {
        return nums1
    }

   var results = [Int](repeating: 0, count: nums1.count + nums2.count)
   var i = 0; var j = 0
    
   while i < nums1.count || j < nums2.count {
       if j >= nums2.count || (i < nums1.count && nums1[i] < nums2[j])  {
           results[i + j] = nums1[i]
           i += 1
       } else {
           results[i + j] = nums2[j]
           j += 1
       }
   }
    
    return results
}


let nums1 = [1, 3, 5];
let nums2 = [2, 4, 6];

merge(nums1, nums2)

