//
//  HackerRank_Divisible_Sum_Pairs.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/27.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Divisible_Sum_Pairs: Tester<(Int, Int, [Int]), Int> {
    static func run() {
        let problem = HackerRank_Divisible_Sum_Pairs()
        problem.inputs = [
            (6, 3, [1, 3, 2, 6, 1, 2])
        ]
        
        problem.outputs = [
            5
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (Int, Int, [Int])) -> Int {
        let (n, k, ar) = input
        
        var i = 0
        var j = i + 1
        
        var pairs: [(Int, Int)] = []
        while i < n - 1 {
            pairs.append((ar[i], ar[j]))
            
            j += 1
            if j == n {
                i += 1
                j = i + 1
            }
        }
        
        return pairs.map { $0 + $1 }
            .filter { $0 % k == 0 }
            .count
    }
}
