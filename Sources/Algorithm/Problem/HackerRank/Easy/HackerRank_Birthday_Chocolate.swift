//
//  HackerRank_Birthday_Chocolate.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/27.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Birthday_Chocolate: Tester<([Int], Int, Int), Int> {
    static func run() {
        let problem = HackerRank_Birthday_Chocolate()
        problem.inputs = [
            ([1, 1, 1, 1, 1, 1], 3, 2),
            ([4], 4, 1)
        ]
        
        problem.outputs = [
            0,
            1
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([Int], Int, Int)) -> Int {
        let (s, d, m) = input
        
        var window = (0 ..< m)
        var count = 0
        while window.upperBound <= s.count {
            let sumOfChocolate = s.enumerated().filter { window.contains($0.offset) }
                .map { $0.element }
                .reduce(0, +)
            
            if sumOfChocolate == d {
                count += 1
            }
            
            window = (window.lowerBound + 1 ..< window.upperBound + 1)
        }
        
        return count
    }
}
