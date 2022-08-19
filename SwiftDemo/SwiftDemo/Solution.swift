//
//  Solution.swift
//  SwiftDemo
//
//  Created by Twisted Fate on 2022/8/19.
//

import Cocoa

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val; self.next = next;
    }
}


class Solution {
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
       
       var node1 = l1
       var node2 = l2
       
        var valueNode = ListNode()
        var enable = false
        while node1?.next != nil || node2?.next != nil {
            
            let sum = (node1?.val ?? 0) + (node2?.val ?? 0) + (enable ? 1 : 0);
            if sum > 10 {
                enable = true
                valueNode.val = sum - 10
            } else {
                enable = false
                valueNode.val = sum;
            }
            
            node1 = node1?.next
            node2 = node2?.next
            
            valueNode.next = ListNode();
            valueNode = valueNode.next!;
            
           
            
        }
        return valueNode.next
    }
    
//    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//
//        var list = [Int]()
//        var index = 0 ;
//        while l1?.next != nil || l2?.next != nil {
//            list[index] = (l1?.val ?? 0) + (l2?.val ?? 0);
//        }
//
//        var sum = 0;
//        for (index, value) in list.enumerated() {
//
//            let current = 10^index
//
//            sum = (value % current) * current + (value / current) * current
//
//        }
//
//        return sum
//
//    }
}



