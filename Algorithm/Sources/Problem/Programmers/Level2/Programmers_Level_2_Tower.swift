//
//  Programmers_Level_2_Tower.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/17.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_2_Tower: Tester<[Int], [Int]> {
    static func run() {
        let problem = Programmers_Level_2_Tower()
        problem.inputs = [
            [6, 9, 5, 7, 4],
            [3, 9, 9, 3, 5, 7, 2],
            [1, 5, 3, 6, 7, 6, 5],
        ]
        
        problem.outputs = [
            [0, 0, 2, 2, 4],
            [0, 0, 0, 3, 3, 3, 6],
            [0, 0, 2, 0, 0, 5, 6]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: [Int]) -> [Int] {
        let heights = input
        
        let stack = Stack<Int>()
        var result = Array(repeating: 0, count: heights.count)
        heights.enumerated()
            .reversed()
            .forEach {
                while !stack.isEmpty {
                    guard let index = stack.peek(), heights[index] < $0.element else { break }
                    stack.pop()
                    result[index] = $0.offset + 1
                }
                
                stack.push($0.offset)
            }
        
        return result
    }
}
