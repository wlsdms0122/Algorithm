//
//  Programmers_Level_2_Biggest_Number.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/30.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_2_Biggest_Number: Tester<[Int], String> {
    static func run() {
        let problem = Programmers_Level_2_Biggest_Number()
        problem.inputs = [
            [6, 10, 2],
            [3, 30, 34, 5, 9],
            [0, 0, 0]
        ]
        
        problem.outputs = [
            "6210",
            "9534330",
            "0"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: [Int]) -> String {
        let numbers = input
        
        guard numbers.filter({ $0 != 0 }).count > 0 else {
            return "0"
        }
        
        return numbers.map { String($0) }
            .sorted { $0 + $1 > $1 + $0 }
            .joined()
    }
}
