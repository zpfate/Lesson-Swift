//
//  ClosureTest.swift
//  SwiftDemo
//
//  Created by fate on 2024/7/8.
//

import Foundation


class ClosureTest {
    
    
    typealias PrintNameBlock = (_ name: String) -> Void
    
    var printNameBlock: PrintNameBlock?
    
    func printName() {
        self.printNameBlock?("test")
    }
    
}
