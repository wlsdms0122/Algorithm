//
//  Heap.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/20.
//  Copyright © 2019 JSilver. All rights reserved.
//

class Heap<T> {
    private var nodes: [T] = []
    private var orderCriteria: (T, T) -> Bool
    
    var isEmpty: Bool { nodes.isEmpty }
    
    init(sort: @escaping (T, T) -> Bool) {
        orderCriteria = sort
    }
    
    init(_ sequence: [T], sort: @escaping (T, T) -> Bool) {
        orderCriteria = sort
        
        sequence.forEach { insert($0) }
    }
    
    private func parentIndex(of index: Int) -> Int { (index - 1) / 2 }
    private func leftChildIndex(of index: Int) -> Int { index * 2 + 1 }
    private func rightChildIndex(of index: Int) -> Int { index * 2 + 2 }
    
    private func shiftUp(_ index: Int) {
        guard (0 ..< nodes.count).contains(index) else { return }
        
        var childIndex = index
        var parentIndex = self.parentIndex(of: childIndex)
        
        let child = nodes[childIndex]
        while childIndex > 0 && orderCriteria(child, nodes[parentIndex]) {
            nodes.swapAt(childIndex, parentIndex)
            childIndex = parentIndex
            parentIndex = self.parentIndex(of: childIndex)
        }
    }
    
    private func shiftDown(_ index: Int) {
        var parentIndex = index
        
        while true {
            var childIndex = parentIndex
            let leftChildIndex = self.leftChildIndex(of: parentIndex)
            let rightChildIndex = leftChildIndex + 1
            
            if leftChildIndex < nodes.count && orderCriteria(nodes[leftChildIndex], nodes[childIndex]) {
                childIndex = leftChildIndex
            }
            
            if rightChildIndex < nodes.count && orderCriteria(nodes[rightChildIndex], nodes[childIndex]) {
                childIndex = rightChildIndex
            }
            
            guard parentIndex != childIndex else { break }
            
            nodes.swapAt(parentIndex, childIndex)
            parentIndex = childIndex
        }
    }
    
    func insert(_ value: T) {
        nodes.append(value)
        shiftUp(nodes.count - 1)
    }
    
    func remove() -> T? {
        guard !nodes.isEmpty else { return nil }
        
        if nodes.count == 1 {
            return nodes.removeLast()
        } else {
            let value = nodes[0]
            nodes[0] = nodes.removeLast()
            shiftDown(0)
            return value
        }
    }
    
    func peek() -> T? {
        return nodes.first
    }
}
