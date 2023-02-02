//
//  HackerRank_Migratory_Birds.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/27.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Migratory_Birds: Tester<[Int], Int> {
    static func run() {
        let problem = HackerRank_Migratory_Birds()
        problem.inputs = [
            [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]
        ]
        
        problem.outputs = [
            3
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: [Int]) -> Int {
        let arr = input
        
        var sightings = Array(repeating: 0, count: 5)
        arr.forEach { sightings[$0 - 1] += 1 }
        
        return sightings.enumerated().max { $0.1 < $1.1 }!.0 + 1
    }
}
