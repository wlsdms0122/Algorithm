//
//  Stack.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/23.
//  Copyright © 2019 JSilver. All rights reserved.
//

class Stack<T: Equatable> {
    private var top: Node<T>?

    var isEmpty: Bool {
        return top == nil
    }
    
    func push(_ value: T) {
        let node = Node(value)
        node.next = top
        top = node
    }
    
    @discardableResult
    func pop() -> T? {
        let value = top?.value
        top = top?.next
        return value
    }
    
    func peek() -> T? {
        return top?.value
    }
}
