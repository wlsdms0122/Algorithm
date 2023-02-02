//
//  HeapTest.swift
//  AlgorithmTests
//
//  Created by JSilver on 2019/12/20.
//  Copyright © 2019 JSilver. All rights reserved.
//

@testable import Algorithm
import XCTest

class HeapTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: - private method
    private func getAllElement<T>(heap: Heap<T>) -> [T] {
        var result: [T] = []
        while !heap.isEmpty {
            guard let value = heap.remove() else { continue }
            result.append(value)
        }
        
        return result
    }
    
    // MARK: - testcase
    func testinsert() {
        // Given
        let heap: Heap<Int> = Heap { $0 < $1 }
        
        // When
        heap.insert(10)
        heap.insert(30)
        heap.insert(20)
        heap.insert(15)
        heap.insert(19)
        heap.insert(11)
        heap.insert(13)
        
        // Then
        XCTAssertEqual(getAllElement(heap: heap), [10, 11, 13, 15, 19, 20, 30])
    }
}
