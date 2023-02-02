//
//  Programmers_Level_1_Square_Distinction.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/05.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Square_Distinction: Tester<Int64, Int64> {
    static func run() {
        let problem = Programmers_Level_1_Square_Distinction()
        problem.inputs = [
            121,
            3
        ]
        
        problem.outputs = [
            144,
            -1
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: Int64) -> Int64 {
        let n = input
        
        for i in (1 ... n) {
            let pow: Int64 = i * i
            if pow > n {
                break
            } else if pow == n {
                return (i + 1) * (i + 1)
            }
        }
        return -1
    }
}
