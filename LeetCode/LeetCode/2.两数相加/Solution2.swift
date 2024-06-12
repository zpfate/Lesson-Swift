//
//  Solution2.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/9/2.
//

import Foundation

/**
 2. 两数相加
 https://leetcode.cn/problems/add-two-numbers/description/
 
 给你两个 非空 的链表，表示两个非负的整数。它们每位数字都是按照 逆序 的方式存储的，并且每个节点只能存储 一位 数字。

 请你将两个数相加，并以相同形式返回一个表示和的链表。

 你可以假设除了数字 0 之外，这两个数都不会以 0 开头。
 */

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val; self.next = next;
    }
}


extension Solution {
    
   func addTwoNumbers(_ l1: inout ListNode?, _ l2: inout ListNode?) -> ListNode? {
        
        var resultNode = ListNode();
        let firstNode = resultNode;
        
        /// 进制位是否+1
        var binary = false;
        
        /// 如果L1 L2的next有值
        while l1?.val != nil || l2?.val != nil  {
            /// 相同位之和
            let sum = l1!.val + l2!.val + (binary ? 1 : 0)
            
            if (sum >= 10) {
                binary = true
                resultNode.val = sum - 10
            } else {
                binary = false;
                resultNode.val = sum
            }
                resultNode.next = ListNode()
                resultNode = resultNode.next!
            l1 = l1?.next;
            l2 = l2?.next;
        }
        return firstNode
    }
    
    
    func addTwoNumbers2(_ l1:  ListNode?, _ l2: ListNode?) -> ListNode? {
        
        if l1 == nil {return l2}
        if l2 == nil {return l1}
        
        var link1 = l1
        var link2 = l2
        
        let result = ListNode()
        
        var current = result
        
        // 相同进制位之和
        var sum = 0
        
        while link1 != nil || link2 != nil {
            
            /// 强制解包
            if let link = link1 {
                sum += link.val
                link1 = link.next
            }
            
            if let link = link2 {
                sum += link.val
                link2 = link.next
            }
            
            // 给下一个node赋值为除以10的余数 等价于sum-10
            current.next = ListNode(sum % 10)
            /// 取出是是否进一位
            sum /= 10
            current = current.next!
        }
        
        if (sum > 0) {
            current.next = ListNode(sum % 10)
        }
        
        return result.next
        
    }
    
    /// 递归方案
//    func addTwoNumbers3(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//
//        if l1 == nil && l2 == nil {
//
//            return nil
//
//        } else {
//            var sum = (l1?.val ?? 0) + (l2?.val ?? 0)
//            if sum > 9 {
//                // 进1
//                // 当时想的比较简单，直接在任意链表加上1(即：sum / 10)就完事了
//                l1?.next = addTwoNumbers(l1?.next, ListNode(1))
//                // 这好吗？这不好
//                // l1?.next为[9,9,9,9]这样的数据的话又会递归多次加1
//                // 还修改了l1的数据
//
//                // 取余
//                sum = sum % 10
//                // sum = sum - 10  我jio的也可以
//            }
//            return ListNode(sum, addTwoNumbers(l1?.next, l2?.next))
//        }
//
//    }
    
}
