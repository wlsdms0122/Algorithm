//
//  HackerRank_Mini_Max_Sum.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/26.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Mini_Max_Sum: Tester<[Int], [Int]> {
    static func run() {
        let problem = HackerRank_Mini_Max_Sum()
        problem.inputs = [
            [1, 2, 3, 4, 5]
        ]
        
        problem.outputs = [
            [10, 14]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: [Int]) -> [Int] {
        let arr = input
        
        let sortedArray = arr.sorted()
        let sum = sortedArray.reduce(0, +)
        return [sum - sortedArray.last!, sum - sortedArray.first!]
    }
}
