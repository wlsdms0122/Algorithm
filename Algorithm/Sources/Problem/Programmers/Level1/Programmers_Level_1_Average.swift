//
//  Programmers_Level_1_Average.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/09.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Average: Tester<[Int], Double> {
    static func run() {
        let problem = Programmers_Level_1_Average()
        problem.inputs = [
            [1, 2, 3, 4],
            [5, 5]
        ]
        
        problem.outputs = [
            2.5,
            5
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: [Int]) -> Double {
        let arr = input
        
        return Double(arr.reduce(0, +)) / Double(arr.count)
    }
}
