//
//  Programmers_Level_1_Find_Prime.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/29.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Find_Prime: Tester<Int, Int> {
    static func run() {
        let problem = Programmers_Level_1_Find_Prime()
        problem.inputs = [
            10,
            5,
            100
        ]
        
        problem.outputs = [
            4,
            3,
            25
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: Int) -> Int {
        let n = input
        
        var array: [Int] = Array(repeating: 0, count: n)
        for i in (1 ..< n) {
            guard array[i] == 0 else { continue }
            for j in stride(from: 2 * (i + 1), through: n, by: i + 1) {
                array[j - 1] = 1
            }
        }
        return array.filter { $0 == 0 }.count - 1
    }
}

