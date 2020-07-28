//
//  Programmers_Level_1_Flip_Natural_Number.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/04.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Flip_Natural_Number: Tester<Int64, [Int]> {
    static func run() {
        let problem = Programmers_Level_1_Flip_Natural_Number()
        problem.inputs = [
            12345
        ]
        
        problem.outputs = [
            [5, 4, 3, 2, 1]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: Int64) -> [Int] {
        let n = input
        
        var answer: [Int] = []
        var val = n
        
        while val > 0 {
            answer.append(Int(val % 10))
            val /= 10
        }
        
        return answer
    }
}
