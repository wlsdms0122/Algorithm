//
//  Programmers_Level_1_Clean_Divide.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/28.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Clean_Divide: Tester<([Int], Int), [Int]> {
    static func run() {
        let problem = Programmers_Level_1_Clean_Divide()
        problem.inputs = [
            ([5, 9, 7, 10], 5),
            ([2, 36, 1, 3], 1),
            ([3, 2, 6], 10)
        ]
        
        problem.outputs = [
            [5, 10],
            [1, 2, 3, 36],
            [-1]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([Int], Int)) -> [Int] {
        let (arr, divisor) = input
        let result = arr.filter { $0 % divisor == 0 }.sorted()
        return result.isEmpty ? [-1] : result
    }
}
