//
//  main.swift
//  SwiftDemo
//
//  Created by Twisted Fate on 2021/12/15.
//

import Foundation


print("Hello, World!")


// 闭包作为属性
let closureTest = ClosureTest()
closureTest.printNameBlock = {(_ name) in
    print("\(name)")
}

closureTest.printName()


// 后置闭包
var names = ["AT", "AE", "D", "S", "BE"]
names.sort(){$0 > $1}
names.sort()
print("\(names)")


// 枚举
enum Direction {
    case north, south, east, west
}

enum Season {
    case spring(month: Int)
    case summer(startMonth: Int, endMonth: Int)
}

var sping: Season = Season.spring(month: 1)
switch sping {
case .spring(let month):
    print(month)
case .summer(let startMonth, let endMonth):
    print(startMonth, endMonth)
}


// 反射Mirror
let p = Person(name: "Zed", age: 222)
let mirror = Mirror(reflecting: p)
print("mirror.children: \(mirror.children)")

for child in mirror.children {
    
    if let key = child.label {
        print("\(child.label!): \(child.value)")
    }
    
}

// 高阶函数
/// 1. map函数: 遍历数组 并可以对其中的元素做一次处理
var values = [1, 2, 3, 4, 5]
// map: [11, 12, 13, 14, 15]
print("map: \(values.map({ e in return e + 10}))")

/// 2. compactMap函数:  (1)实现降维操作,二维数组变为一维数组 (2)强制解包,过滤掉nil元素
var strs = ["1", "2", "second", "3", "five", "4"]
// compactMap: [1, 2, 3, 4]
print("compactMap: \(strs.compactMap{Int($0)})")

/// 3. filter函数: 过滤操作
var numbers = [1, 2, 3, 4, 5]
// filter: [3, 4, 5]
print("filter: \(numbers.filter{$0 > 2})")

/// 4. reduce函数: 可以设置一个初始值, 返回两个结果变量(result, current)
var prices = [10, 20, 30]
// reduce: 60
print("reduce: \(prices.reduce(0, { partialResult, value in return partialResult + value}))")
// reduce: 70
print("reduce: \(prices.reduce(10){$0 + $1})")
