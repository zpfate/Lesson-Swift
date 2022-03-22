import UIKit

/// https://www.cnswift.org/strings-and-characters#Unicode

var optionalString : String? = "Hello"
print(optionalString)
print(optionalString == nil)

var optionalName : String? = nil
var hi = "Hello!"
if let name = optionalName {
    hi = "Hello, \(name)"
}

// 声明
let greeting: String = "Hello, World!"

greeting[greeting.startIndex]

// 尾
greeting[greeting.index(before: greeting.endIndex)]

greeting[greeting.index(after: greeting.startIndex)]

let index = greeting.index(greeting.startIndex, offsetBy: 7)

greeting[index]

// 越界
//greeting[greeting.endIndex] // error
//greeting.index(after: endIndex) // error


// 访问字符串索引
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "\n")
}

// 扩展字形集群
let eAcute: Character = "\u{E9}" // é
let combinedEAcute: Character = "\u{65}\u{301}" // e followed by

let string: String = "\u{65}\u{301}"
string[string.startIndex]

print("\nstring count === \(string.count)")

if (eAcute == combinedEAcute) {
    print("true")
} else {
    print("false")
}

let precomposed: Character = "\u{D55C}" // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}" // ᄒ, ᅡ, ᆫ

// 扩展字形集群允许封闭标记的标量 (比如 COMBINING ENCLOSING CIRCLE, 或者说 U+20DD) 作为单一 Character值来圈住其他 Unicode 标量：
let enclosedEAcute: Character = "\u{E9}\u{20DD}"
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"

/// 元组
let tuple = (index: 10, name: "tuple")
print("\(tuple.index)")
print("\(tuple.name)")

