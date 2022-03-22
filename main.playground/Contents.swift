import UIKit
import PlaygroundSupport

func addSum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

let sum = addSum(num1: 1, num2: 2)
print(sum)

class Person {

    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
extension Person: CustomStringConvertible {
    var description: String {
        get {
            return "\(name) \(age)"
        }
    }
}

let p = Person(name: "zhang", age: 12)

let naVC = UINavigationController(rootViewController: ViewController())
PlaygroundPage.current.liveView = naVC

// 元组
let err = (1, "无权限")
/// 带名称的元组
let error = (errorCode: 1, errorMessage: "无权限")
print(error.errorCode)
print(error.errorMessage)

/// Swift  Optional 标准库里面的一个枚举类型
/// 为什么需要Optional?
/**
    Objective-C中nil是无类型空指针, 无法知道具体是哪个类型
    数组字典集合不允许放nil
    Objective-C所有对象都可以为nil, 运行的时候不知道是不是nil,需要先进行空值判断
    Objective-C中nil只能对象使用, 不能用在其他地方, 比如数组在查找元素没有找到 使用NSNotFound来标识没有找到
 */

let str: String? = "abc"

///判空
if str != nil {
    let count = str!.count
    print("count === \(count)")
}

/// 绑定
if let acutalStr = str {
    let count = acutalStr.count
    print("count === \(count)")
}

/// 强制展开, 为nil的时候报错
let count = str!.count

/// 隐式展开
let string: String! = "abc"
let stringCount = string.count

/// Optional原理
var optionalString: Optional<String> = "abc"
if let actualOptionalString = optionalString {
    let count = actualOptionalString.count
    print(count)
}

// 理论上可以直接通过unsafelyUnwrapped获取可选项的值
let optionalStringCount = optionalString.unsafelyUnwrapped.count

