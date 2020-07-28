//
//  Programmers_Level_1_Distance_List.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/11.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Distance_List: Tester<(Int, Int), [Int64]> {
    static func run() {
        let problem = Programmers_Level_1_Distance_List()
        problem.inputs = [
            (2, 5),
            (4, 3),
            (-4, 2),
            (0, 1)
        ]
        
        problem.outputs = [
            [2, 4, 6, 8, 10],
            [4, 8, 12],
            [-4, -8],
            [0]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (Int, Int)) -> [Int64] {
        let (x, n) = input
        
        return (1 ... n).map { Int64($0 * x) }
    }
}
