//
//  HackerRank_Birthday_Cake_Candles.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/26.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Birthday_Cake_Candles: Tester<[Int], Int> {
    static func run() {
        let problem = HackerRank_Birthday_Cake_Candles()
        problem.inputs = [
            [3, 2, 1, 3]
        ]
        
        problem.outputs = [
            2
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: [Int]) -> Int {
        let ar = input
        
        let tallestCandleHeight = ar.max()!
        return ar.reduce(0) { $1 == tallestCandleHeight ? $0 + 1 : $0 }
    }
}
