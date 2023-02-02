//
//  Programmers_Level_1_Fail_Rate.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/13.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Fail_Rate: Tester<(Int, [Int]), [Int]> {
    static func run() {
        let problem = Programmers_Level_1_Fail_Rate()
        problem.inputs = [
            (5, [2, 1, 2, 6, 2, 4, 3, 3]),
            (4, [4, 4, 4, 4, 4])
        ]
        
        problem.outputs = [
            [3, 4, 2, 1, 5],
            [4, 1, 2, 3]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (Int, [Int])) -> [Int] {
        let (N, stages) = input
        
        var failures: [Double] = Array(repeating: 0, count: N)
        stages.forEach {
            guard $0 - 1 >= 0 && $0 - 1 < N else { return }
            failures[$0 - 1] += 1
        }
        
        var userCount = Double(stages.count)
        return failures.map { failure -> Double in
            guard userCount > 0 else { return 0.0 }
            let rate = failure / userCount
            if rate > 0 {
                userCount -= failure
            }
            
            return rate
        }
        .enumerated()
        .sorted { $0.element > $1.element }
        .map { $0.offset + 1 }
    }
}
