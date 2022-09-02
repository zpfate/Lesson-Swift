//
//  main.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/9/2.
//

import Foundation

print("Hello, World!")


var v1: ListNode? = ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9))))))
var v2: ListNode? = ListNode(9, ListNode(9, ListNode(9, ListNode(9))))


var node = Solution2().twoSums(v1 , v2)
 
while node != nil {
    
    
    print(node!.val)
        node = node!.next
}
    




