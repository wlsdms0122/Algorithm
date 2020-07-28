//
//  Programmers_Level_1_Gym_Clothes.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/26.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Gym_Clothes: Tester<(Int, [Int], [Int]), Int> {
    static func run() {
        let problem = Programmers_Level_1_Gym_Clothes()
        problem.inputs = [
            (5, [2, 4], [1, 3, 5]),
            (5, [2, 4], [3]),
            (3, [3], [1]),
            (3, [1], [2])
        ]
        
        problem.outputs = [
            5,
            4,
            2,
            3
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (Int, [Int], [Int])) -> Int {
        let (n, lost, reserve) = input
        
        var clothes = Array(repeating: 1, count: n)
        lost.forEach { clothes[$0 - 1] -= 1 }
        reserve.forEach { clothes[$0 - 1] += 1 }
        clothes.enumerated().filter { $1 == 2 }
            .map { $0.offset }
            .forEach {
                if $0 - 1 >= 0 && clothes[$0 - 1] == 0 {
                    clothes[$0 - 1] = 1
                } else if $0 + 1 < n && clothes[$0 + 1] == 0 {
                    clothes[$0 + 1] = 1
                }
            }
        
        return clothes.filter { $0 > 0 }.count
    }
}
