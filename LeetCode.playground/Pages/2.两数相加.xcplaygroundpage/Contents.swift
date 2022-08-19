

/*
给你两个 非空 的链表，表示两个非负的整数。它们每位数字都是按照 逆序 的方式存储的，并且每个节点只能存储 一位 数字。

请你将两个数相加，并以相同形式返回一个表示和的链表。

你可以假设除了数字 0 之外，这两个数都不会以 0 开头。

*/

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next;}
}


class Solution {
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var valueNode = ListNode()
        var enable = false
        while l1?.next != nil || l2?.next != nil {
            
            let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + (enable ? 1 : 0);
            if sum > 10 {
                enable = true
                valueNode.val = sum - 10
            } else {
                enable = false
                valueNode.val = sum;
            }
            valueNode.next = ListNode();
        }
        return valueNode
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
