//
//  Programmers_Level_1_Sum_Of_Digits.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/03.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Sum_Of_Digits: Tester<Int, Int> {
    static func run() {
        let problem = Programmers_Level_1_Sum_Of_Digits()
        problem.inputs = [
            123,
            987
        ]
        
        problem.outputs = [
            6,
            24
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: Int) -> Int {
        let n = input
        
        var answer = 0
        var val = n
        
        while val > 0 {
            answer += val % 10
            val /= 10
        }
        
        return answer
    }
}
