//
//  Programmers_Level_1_Harshad.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/10.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Harshad: Tester<Int, Bool> {
    static func run() {
        let problem = Programmers_Level_1_Harshad()
        problem.inputs = [
            10,
            12,
            11,
            13
        ]
        
        problem.outputs = [
            true,
            true,
            false,
            false
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: Int) -> Bool {
        let x = input
        
        return x % String(x).reduce(0) { $0 + Int(String($1))! } == 0
    }
}
