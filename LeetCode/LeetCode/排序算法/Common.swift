//
//  Common.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/11/18.
//

import Foundation

func printSortArr(_ list: [Int], _ times: Int) -> Void {
    
    print("第\(times)轮:", terminator: " ")
    for element in list {
        print("\(element)", terminator: "  ")
    }
    print("")
}
