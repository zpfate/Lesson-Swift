//
//  Machine.swift
//  SwiftDemo
//
//  Created by Twisted Fate on 2021/12/15.
//

import Foundation

class Vehicle {
    
    func transport() -> Void {
        print("transport...")
    }
}


class Plane: Vehicle {
    
    func fly() -> Void {
        print("fly...")
    }
}
