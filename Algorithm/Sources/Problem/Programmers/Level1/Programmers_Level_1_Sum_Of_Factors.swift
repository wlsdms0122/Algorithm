//
//  Programmers_Level_1_Sum_Of_Factors.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/02.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Sum_Of_Factors: Tester<Int, Int> {
    static func run() {
        let problem = Programmers_Level_1_Sum_Of_Factors()
        problem.inputs = [
            12,
            5
        ]
        
        problem.outputs = [
            28,
            6
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: Int) -> Int {
        let n = input
        guard n > 0 else { return 0 }
        return (1 ... n).reduce(0) {
            return $0 + (n % $1 == 0 ? $1 : 0)
        }
    }
}
