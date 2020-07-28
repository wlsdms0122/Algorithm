//
//  Programmers_Level_1_Budget.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/12.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Budget: Tester<([Int], Int), Int> {
    static func run() {
        let problem = Programmers_Level_1_Budget()
        problem.inputs = [
            ([1, 3, 2, 5, 4], 9),
            ([2, 2, 3, 3], 10)
        ]
        
        problem.outputs = [
            3,
            4
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([Int], Int)) -> Int {
        let (d, budget) = input
        
        return d.sorted().reduce((budget: budget, count: 0)) {
            guard $0.budget > 0 else { return $0 }
            let remained = $0.budget - $1
            return (remained, remained >= 0 ? $0.count + 1 : $0.count)
        }.count
    }
}
