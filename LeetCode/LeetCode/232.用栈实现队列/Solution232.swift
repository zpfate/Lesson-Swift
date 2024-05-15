//
//  Solution232.swift
//  LeetCode
//
//  Created by fate on 2024/5/13.
//

import Foundation

/**
 232. 用栈实现队列
 请你仅使用两个栈实现先入先出队列。队列应当支持一般队列支持的所有操作（push、pop、peek、empty）：

 实现 MyQueue 类：

 void push(int x) 将元素 x 推到队列的末尾
 int pop() 从队列的开头移除并返回元素
 int peek() 返回队列开头的元素
 boolean empty() 如果队列为空，返回 true ；否则，返回 false
 说明：

 你 只能 使用标准的栈操作 —— 也就是只有 push to top, peek/pop from top, size, 和 is empty 操作是合法的。
 你所使用的语言也许不支持栈。你可以使用 list 或者 deque（双端队列）来模拟一个栈，只要是标准的栈操作即可。
 */


class MyQueue {
    
    // 栈: FILO 先进后出
    // 队列: FIFO 先进先出
    // Swift没有栈 只有数组

    var inStack: [Int]
    var outStack: [Int]
    
    
    init() {
        inStack = [Int]()
        outStack = [Int]()
    }
    
    func push(_ x: Int) {
        inStack.append(x)
        
    }
    
    func pop() -> Int {
        
        return outStack.removeLast()
    }
    
    func peek() -> Int {

        return 1
    }
    
    func empty() -> Bool {

        
        return inStack.isEmpty
    }
}

extension Solution {
    
    
    
}
