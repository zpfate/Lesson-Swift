//
//  Solution442.swift
//  LeetCode
//
//  Created by fate on 2023/9/7.
//

import Foundation
/**
 给你两个 非空链表来代表两个非负整数。数字最高位位于链表开始位置。它们的每个节点只存储一位数字。将这两数相加会返回一个新的链表。

 你可以假设除了数字 0 之外，这两个数字都不会以零开头。
 */

extension Solution {
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
      
        
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        
        var stack1 = [Int]()
        var stack2 = [Int]()
        
        var link1 = l1
        var link2 = l2
        while link1 != nil {
            stack1.append(link1!.val)
            link1 = link1?.next
        }
        
        while link2 != nil {
            stack2.append(link2!.val)
            link2 = link2?.next
        }
        
        
        var carrier = 0
        var resultNode: ListNode? = nil
        while !stack1.isEmpty || !stack2.isEmpty || carrier != 0{
            
            var val = (stack1.popLast() ?? 0) + (stack2.popLast() ?? 0) + carrier
            carrier = 0
            if val / 10 > 0 {
                val = val % 10
                carrier = 1
            }
            
            let currentNode = ListNode(val, resultNode)
            resultNode = currentNode
        }
        return resultNode
    }
}
