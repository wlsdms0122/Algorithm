//
//  QueueTest.swift
//  AlgorithmTests
//
//  Created by JSilver on 2019/11/23.
//  Copyright © 2019 JSilver. All rights reserved.
//

@testable import Algorithm
import XCTest

class QueueTest: XCTestCase {

    override func setUp() {
        
    }

    override func tearDown() {
        
    }
    
    // MARK: - private method
    private func getAllElement<T: Equatable>(queue: Queue<T>) -> [T] {
        var result: [T] = []
        while !queue.isEmpty {
            guard let value = queue.pop() else { continue }
            result.append(value)
        }
        
        return result
    }
    
    // MARK: - testcase
    func testPushIntElements() {
        // Given
        let queue: Queue<Int> = Queue()
        
        // When
        queue.push(10)
        queue.push(20)
        queue.push(30)
        
        // Then
        XCTAssertEqual(getAllElement(queue: queue), [10, 20, 30])
    }
    
    func testPushStringElements() {
        // Given
        let queue: Queue<String> = Queue()
        
        // When
        queue.push("a")
        queue.push("b")
        queue.push("c")
        
        // Then
        XCTAssertEqual(getAllElement(queue: queue), ["a", "b", "c"])
    }
    
    func testPopIntElement() {
        // Given
        let queue: Queue<Int> = Queue()
        
        // when
        queue.push(10)
        queue.push(20)
        queue.pop()
        queue.push(30)
        
        // Then
        XCTAssertEqual(getAllElement(queue: queue), [20, 30])
    }
    
    func testPopStringElement() {
        // Given
        let queue: Queue<String> = Queue()
        
        // When
        queue.push("a")
        queue.push("b")
        queue.pop()
        queue.push("c")
        
        // Then
        XCTAssertEqual(getAllElement(queue: queue), ["b", "c"])
    }
    
    func testPopEmptyQueue() {
        // Given
        let queue: Queue<Int> = Queue()
        
        // When
        queue.pop()
        
        // Then
        XCTAssertEqual(queue.isEmpty, true)
    }
}
