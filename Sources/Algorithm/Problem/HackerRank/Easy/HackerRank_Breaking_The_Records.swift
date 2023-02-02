//
//  HackerRank_Breaking_The_Records.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/27.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Breaking_The_Records: Tester<[Int], [Int]> {
    static func run() {
        let problem = HackerRank_Breaking_The_Records()
        problem.inputs = [
            [10, 5, 20, 20, 4, 5, 2, 25, 1]
        ]
        
        problem.outputs = [
            [2, 4]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: [Int]) -> [Int] {
        let scores = input
        
        var highestScore = scores[0]
        var lowestScore = scores[0]
        
        let counts = scores.reduce((0, 0)) {
            if $1 > highestScore {
                highestScore = $1
                return ($0.0 + 1, $0.1)
            } else if $1 < lowestScore {
                lowestScore = $1
                return ($0.0, $0.1 + 1)
            }
            
            return $0
        }
        
        return [counts.0, counts.1]
    }
}
