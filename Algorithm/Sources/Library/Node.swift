//
//  Node.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/23.
//  Copyright © 2019 JSilver. All rights reserved.
//

class Node<T: Equatable>: Equatable {
    var value: T
    var next: Node<T>?
    
    init(_ value: T) {
        self.value = value
    }
    
    static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
        lhs.value == rhs.value
    }
    
    static func != (lhs: Node<T>, rhs: Node<T>) -> Bool {
        lhs.value != rhs.value
    }
}
