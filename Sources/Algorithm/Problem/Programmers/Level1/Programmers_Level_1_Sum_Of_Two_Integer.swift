//
//  Programmers_Level_1_Sum_Of_Two_Integer.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/28.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Sum_Of_Two_Integer: Tester<(Int, Int), Int64> {
    static func run() {
        let problem = Programmers_Level_1_Sum_Of_Two_Integer()
        problem.inputs = [
            (3, 5),
            (3, 3),
            (5, 3)
        ]
        
        problem.outputs = [
            12,
            3,
            12
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (Int, Int)) -> Int64 {
        let (a, b) = input
        
        return (Int64(min(a, b)) ... Int64(max(a, b))).reduce(0, +)
    }
}
