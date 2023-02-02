//
//  Programmers_Level_1_Basic_String.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/29.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Basic_String: Tester<String, Bool> {
    static func run() {
        let problem = Programmers_Level_1_Basic_String()
        problem.inputs = [
            "a123",
            "1234"
        ]
        
        problem.outputs = [
            false,
            true
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: String) -> Bool {
        let s = input
        
        guard s.count == 4 || s.count == 6 else { return false }
        return s.reduce(true) {
            guard $0 else { return $0 }
            return ("0" ... "9").contains($1)
        }
    }
}

