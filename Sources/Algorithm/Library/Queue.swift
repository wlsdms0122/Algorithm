//
//  Queue.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/23.
//  Copyright © 2019 JSilver. All rights reserved.
//

class Queue<T: Equatable> {
    private var head: Node<T>?
    private var leaf: Node<T>?
    
    var isEmpty: Bool {
        return head == nil && leaf == nil
    }
    
    func push(_ value: T) {
        let node = Node(value)
        if isEmpty {
            head = node
            leaf = node
        } else {
            leaf?.next = node
            leaf = node
        }
    }
    
    @discardableResult
    func pop() -> T? {
        let value = head?.value
        if head != leaf {
            head = head?.next
        } else {
            head = nil
            leaf = nil
        }
        
        return value
    }
}
