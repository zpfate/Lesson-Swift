//
//  Solution2.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/9/2.
//

import Foundation

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val; self.next = next;
    }
}



class Solution2 {
    
    func addTwoNumbers(_ l1: inout ListNode?, _ l2: inout ListNode?) -> ListNode? {
        

        let resultNode = ListNode();
        
        let firstNode = resultNode;
        
        
        var binary = false;
        
        
        /// 如果L1 L2的next有值
        while l1?.next != nil || l2?.next != nil  {
            
            /// 相同位之和
            let sum = l1!.val + l2!.val + (binary ? 1 : 0)
            
            if (sum >= 10) {
                binary = true
                resultNode.val = sum - 10
            } else {
                binary = false;
                resultNode.val = sum
            }
            
            l1 = l1?.next;
            l2 = l2?.next;
            
            resultNode.next = ListNode()
        }
        return firstNode
  
    }
    
    
    func twoSums(_ l1:  ListNode?, _ l2: ListNode?) -> ListNode? {
        var node1 = l1
        var node2 = l2
        
         var valueNode = ListNode()
         let resultNode = valueNode

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
             if (valueNode.next != nil) {
                 valueNode = valueNode.next!;
             }
         }
         return resultNode
    }
    
}
