//
//  HackerRank_A_Very_Big_Sum.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/23.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_A_Very_Big_Sum: Tester<[Int], Int> {
    static func run() {
        let problem = HackerRank_A_Very_Big_Sum()
        problem.inputs = [
            [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
        ]
        
        problem.outputs = [
            5000000015
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: [Int]) -> Int {
        let ar = input
        return ar.reduce(0, +)
    }
}
