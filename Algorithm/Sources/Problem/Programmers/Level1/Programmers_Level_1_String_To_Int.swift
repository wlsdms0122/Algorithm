//
//  Programmers_Level_1_String_To_Int.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/02.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_String_To_Int: Tester<String, Int> {
    static func run() {
        let problem = Programmers_Level_1_String_To_Int()
        problem.inputs = [
            "10",
            "-12",
            "+30"
        ]
        
        problem.outputs = [
            10,
            -12,
            30
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: String) -> Int {
        let s = input
        return Int(s) ?? 0
    }
}

