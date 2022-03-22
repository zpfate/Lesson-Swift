//
//  Flyable.swift
//  SwiftDemo
//
//  Created by Twisted Fate on 2021/12/15.
//

import Foundation

protocol Flyable {
    
    func fly()
}


extension Flyable {
    
    func fly() -> Void {
        print("fly")
    }
}
