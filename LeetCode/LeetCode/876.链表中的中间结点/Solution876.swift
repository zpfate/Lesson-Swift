//
//  Solution876.swift
//  LeetCode
//
//  Created by fate on 2023/8/31.
//

import Foundation
/**
 给你单链表的头结点 head ，请你找出并返回链表的中间结点。

 如果有两个中间结点，则返回第二个中间结点。
 */

extension Solution {
    
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        while let next = fast?.next {
            slow = slow?.next;
            fast = next.next;
        }
        return slow;
    }
}
