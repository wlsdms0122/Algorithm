//
//  HackerRank_Cats_And_A_Mouse.swift
//  Algorithm
//
//  Created by JSilver on 2020/08/05.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Cats_And_A_Mouse: Tester<(Int, Int, Int), String> {
    static func run() {
        let problem = HackerRank_Cats_And_A_Mouse()
        problem.inputs = [
            (1, 2, 3),
            (1, 3, 2)
        ]
        
        problem.outputs = [
            "Cat B",
            "Mouse C"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (Int, Int, Int)) -> String {
        let (x, y, z) = input
        
        let result = abs(x - z) - abs(y - z)
        if result < 0 {
            return "Cat A"
        } else if result > 0 {
            return "Cat B"
        } else {
            return "Mouse C"
        }
    }
}
