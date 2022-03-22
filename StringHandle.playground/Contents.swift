import UIKit

let emptyString = ""
if emptyString.isEmpty {
//    print("emptyString is empty")
}

let str = "abc"
print("str is \(str)")
let str1: String = "abc"

let str2: String? = "abc"

let numbers = """
1
2
3
4
5
"""

/// 字符串插值 \(), 类似[NSString stringWithFormat:@""]
print("numbers === \(numbers)")

print("6 times 7 is \(6 * 7).")

print(#"6 times 7 is \(6 * 7)."#)
/// 在反斜杠后面添加与首尾同等数量的井号 使插值生效
print(#"6 times 7 is \#(6 * 7)."#)


let numbersWithSymbols = #"1\n2345"#
print(numbersWithSymbols)

let symbols = ""

/// 扩展字符串分隔符 (Raw String)
let rawString = #"Line 1\nLine2 "#
print(rawString)

let welcomeLet = "hello"
var welcomeVar = "hello"
welcomeVar += "World"

print(#"#\n\t"#)

//let string = "hello, world"
//for c in string {
//    print(c)
//}


let greeting = "Guten  Tag!"
/// 第一个字符
greeting[greeting.startIndex]
/// 最后一个字符
// ********** endIndex是字符串中最后一个字符后面的位置 ***********
//greeting[greeting.endIndex]

/// 最后一个字符
greeting[greeting.index(before: greeting.endIndex)]
/// 第二个字符
greeting[greeting.index(after: greeting.startIndex)]
/// 第一个字符后第七个字符
greeting[greeting.index(greeting.startIndex, offsetBy: 7)]

var welcome = "hello"
///插入字符
welcome.insert("1", at: welcome.endIndex)
/// 插入字符串
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))

/// 移除字符串
welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome)
/// 移除一段字符串
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
print(welcome)

/// 子字符串
/// 使用下标或者类似prefix(_:)的方法得到的字符串是Substring类型
/// Substring拥有String的大部分方法, Substring可以转为String
/// Substring是为了内存考虑,在更改或者使用String初始化Substring之前, Substring都指向原来的内存

let newWelcome = "hello, world!"



/// String和Substring都遵循StringProtocol协议
/// 在日常工作中, 需要一些定义字符串的操作函数,参数使用StringProtocol, 这样可以同时使用String和Substring

/// 字符串相等于不等 == 和 !=
/// 前缀相等性 hasPrefix(_:)
/// 后缀相等性 hasSuffix(_:)


///
/**   ****Swift String为什么不可以使用下标形式进行操作和访问****
 /
 *
 */
/// 获取子字符串

var title: String = "Hello, world!"
title.prefix(5)
title.suffix(6)

title.substring(with: title.index(title.endIndex, offsetBy: -5)..<title.endIndex)



let decomposed = "\u{1100}\u{1161}" // ᄀ + ᅡ
let precomposed = "\u{AC00}" // 가
if decomposed == precomposed {
    print("decomposed == precomposed")
}
