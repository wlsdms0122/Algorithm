//
//  Programmers_Level_1_Collatz_Conjecture.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/09.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Collatz_Conjecture: Tester<Int, Int> {
    static func run() {
        let problem = Programmers_Level_1_Collatz_Conjecture()
        problem.inputs = [
            6,
            16,
            626331
        ]
        
        problem.outputs = [
            8,
            4,
            -1
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: Int) -> Int {
        let num = input
        
        var count = 0
        var value = num
        while count < 500 && value > 1 {
            value = value % 2 == 0 ? value / 2 : value * 3 + 1
            count += 1
        }
        
        return value == 1 ? count : -1
    }
}
