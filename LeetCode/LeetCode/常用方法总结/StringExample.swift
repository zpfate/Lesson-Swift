//
//  StringExample.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/11/18.
//

import Foundation

func string_handle() -> Void {
    
    let str = "Hello, World"
    /// 字符串分割
    let strArr = str.split(separator: ",")
    print("\(str)分割为:\(strArr)")
    
    /// 遍历字符串
    for c in str {
        print("\(c)", terminator: " ")
    }
    
    /// 截取字符串
    let startIndex = str.startIndex
    let endIndex = str.index(str.startIndex, offsetBy: 3)
    let substr = str[startIndex..<endIndex]
    print("截取字符串为:\(substr)")
    print(str[str.startIndex])

    print(str[str.index(str.startIndex, offsetBy:0)])

    print(str[str.index(str.endIndex, offsetBy: -1)])
}


//extension String {
//    
//    subscript (i: Int) -> Character {
//        return self[self.index(self.startIndex, offsetBy: i)]
//    }
//    
////    subscript (i: Int) -> String {
////        return String(self[i] as Character)
////    }
//    
//    subscript (r: Range<Int>) -> String {
//        let start = index(startIndex, offsetBy: r.lowerBound)
//        let end = index(startIndex, offsetBy: r.upperBound)
//        return String(self[start..<end])
//    }
//    
//    subscript (r: ClosedRange<Int>) -> String {
//        let start = index(startIndex, offsetBy: r.lowerBound)
//        let end = index(startIndex, offsetBy: r.upperBound)
//        return String(self[start...end])
//    }
//}
