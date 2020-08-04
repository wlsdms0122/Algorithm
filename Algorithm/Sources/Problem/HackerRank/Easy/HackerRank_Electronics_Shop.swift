//
//  HackerRank_Electronics_Shop.swift
//  Algorithm
//
//  Created by JSilver on 2020/08/04.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Electronics_Shop: Tester<([Int], [Int], Int), Int> {
    static func run() {
        let problem = HackerRank_Electronics_Shop()
        problem.inputs = [
            ([3, 1], [5, 2, 8], 10),
            ([4], [5], 1)
        ]
        
        problem.outputs = [
            9,
            -1
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([Int], [Int], Int)) -> Int {
        let (keyboards, drives, b) = input
        
        return keyboards.flatMap { keyboard in drives.map { keyboard + $0 } }
            .filter { $0 <= b }
            .max() ?? -1
    }
}
