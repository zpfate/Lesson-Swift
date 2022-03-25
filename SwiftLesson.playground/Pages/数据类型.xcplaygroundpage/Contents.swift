
/*:  ## 常量
 *只能赋值一次
 *不要求在编译期确定值,使用之前需要赋值一次
 *常量和变量在初始化之前都不能使用
 */
let age: Int
var num = 10
num+=20
//let sum = num


/*:  ## 标识符
 *标识符(比如常量名,变量名,函数名)几乎可以使用任何字符
 *标识符不能以数字开头 不能包含空白字符,制表符 箭头等特殊字符
 */



let a = 10
let b = 20
let sum = a + b
let average = sum / 2
let average2 = sum >> 1

/// 文档注释
/// 求和
///
/// 讲两个整数相加求和
///
/// - Parameter v1: 第一个整数
/// - Parameter v2: 第二个整数
/// - Returns: 2个数的和
///
/// - Note: 传入两个整数即可[批注]
///
func sum(v1: Int, v2: Int) -> Int {v1 + v2}

sum(v1: 10, v2: 20)


/// separator: 间隔符
print("1", "2", "3", separator: "", terminator: "\n")

var number = 10;
func add(_ num: inout Int) -> Void {
    num += 1
}
add(&number)
