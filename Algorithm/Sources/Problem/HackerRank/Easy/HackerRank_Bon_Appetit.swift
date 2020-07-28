//
//  HackerRank_Bon_Appetit.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/28.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Bon_Appetit: Tester<([Int], Int, Int), String> {
    static func run() {
        let problem = HackerRank_Bon_Appetit()
        problem.inputs = [
            ([3, 10, 2, 9], 1, 12),
            ([3, 10, 2, 9], 1, 7)
        ]
        
        problem.outputs = [
            "5",
            "Bon Appetit"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([Int], Int, Int)) -> String {
        let (bill, k, b) = input
        
        let overcharge = b - (bill.reduce(0, +) - bill[k]) / 2
        return overcharge > 0 ? "\(overcharge)" : "Bon Appetit"
    }
}
