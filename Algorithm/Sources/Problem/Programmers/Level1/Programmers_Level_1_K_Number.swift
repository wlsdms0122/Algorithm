//
//  Programmers_Level_1_K_Number.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/26.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_K_Number: Tester<([Int], [[Int]]), [Int]> {
    static func run() {
        let problem = Programmers_Level_1_K_Number()
        problem.inputs = [
            ([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])
        ]
        
        problem.outputs = [
            [5, 6, 3]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([Int], [[Int]])) -> [Int] {
        let (array, commands) = input
        
        return commands.map { array[$0[0] - 1 ..< $0[1]].sorted()[$0[2] - 1] }
    }
}
