//
//  StackTest.swift
//  AlgorithmTests
//
//  Created by JSilver on 2019/11/23.
//  Copyright © 2019 JSilver. All rights reserved.
//

import XCTest

class StackTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: - private method
    private func getAllElement<T: Equatable>(stack: Stack<T>) -> [T] {
        var result: [T] = []
        while !stack.isEmpty {
            guard let value = stack.pop() else { continue }
            result.append(value)
        }
        
        return result
    }
    
    // MARK: - testcase
    func testPushIntElements() {
        // Given
        let stack: Stack<Int> = Stack()
        
        // When
        stack.push(10)
        stack.push(20)
        stack.push(30)
        
        // Then
        XCTAssertEqual(getAllElement(stack: stack), [30, 20, 10])
    }
    
    func testPushStringElements() {
        // Given
        let stack: Stack<String> = Stack()
        
        // When
        stack.push("a")
        stack.push("b")
        stack.push("c")
        
        // Then
        XCTAssertEqual(getAllElement(stack: stack), ["c", "b", "a"])
    }
    
    func testPopIntElement() {
        // Given
        let stack: Stack<Int> = Stack()
        
        // When
        stack.push(10)
        stack.push(20)
        stack.pop()
        stack.push(30)
        
        // Then
        XCTAssertEqual(getAllElement(stack: stack), [30, 10])
    }
    
    func testPopStringElement() {
        // Given
        let stack: Stack<String> = Stack()
        
        // When
        stack.push("a")
        stack.push("b")
        stack.pop()
        stack.push("c")
        
        // Then
        XCTAssertEqual(getAllElement(stack: stack), ["c", "a"])
    }
    
    func testPopEmptyStact() {
        // Given
        let stack: Stack<Int> = Stack()
        
        // When
        stack.pop()
        
        // Then
        XCTAssertEqual(stack.isEmpty, true)
    }
}
