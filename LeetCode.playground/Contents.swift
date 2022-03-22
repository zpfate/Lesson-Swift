import UIKit
/// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next;}
}
 


class Solution {
    
    /// 给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 target  的那 两个 整数，并返回它们的数组下标。
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        for (index, value) in nums.enumerated() {
            let minus = target - value;
            let firstIndex = nums.firstIndex(of: minus)
            if nums.contains(minus) && firstIndex != index {
                return [index, firstIndex!]
            }
            
        }
        return []
    }
    
    
    /// 实现一个算法，确定一个字符串 s 的所有字符是否全都不同。
    func isUnique(_ astr: String) -> Bool {
        let characters = Set(astr)
        return astr.count == characters.count
    }
    
    
    /// 给定两个字符串 s1 和 s2，请编写一个程序，确定其中一个字符串的字符重新排列后，能否变成另一个字符串。
    func checkPermutation(_ s1: String, _ s2: String) -> Bool {
        
        return true
    }
    
    
    /*
     给你两个 非空 的链表，表示两个非负的整数。它们每位数字都是按照 逆序 的方式存储的，并且每个节点只能存储 一位 数字。
     请你将两个数相加，并以相同形式返回一个表示和的链表。
     你可以假设除了数字 0 之外，这两个数都不会以 0 开头。
     */
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {


    }
    
    func getListNodeCount(_ listNode: ListNode?) -> Int {
        
        var count = 1;
        var currentListNode = listNode;
        if currentListNode?.next != nil {
            currentListNode = currentListNode?.next
            count+=1
        }
        return count;
    }

}


let s = Solution();
s.twoSum([3, 2, 4], 6)
