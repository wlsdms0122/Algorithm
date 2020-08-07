//
//  HackerRank_The_Hurdle_Race.swift
//  Algorithm
//
//  Created by JSilver on 2020/08/07.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_The_Hurdle_Race: Tester<(Int, [Int]), Int> {
    static func run() {
        let problem = HackerRank_The_Hurdle_Race()
        problem.inputs = [
            (4, [1, 6, 3, 5, 2]),
            (7, [2, 5, 4, 5, 2])
        ]
        
        problem.outputs = [
            2,
            0
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (Int, [Int])) -> Int {
        let (k, height) = input
        
        return max(height.max()! - k, 0)
    }
}
