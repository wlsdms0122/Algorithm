//
//  Programmers_Level_1_Count_Of_P_Y.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/28.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Count_Of_P_Y: Tester<String, Bool> {
    static func run() {
        let problem = Programmers_Level_1_Count_Of_P_Y()
        problem.inputs = [
            "pPoooyY",
            "Pyy"
        ]
        
        problem.outputs = [
            true,
            false
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: String) -> Bool {
        let s = input
        
        let count = s.reduce((0, 0)) {
            if $1.lowercased() == "p" {
                return ($0.0 + 1, $0.1)
            } else if $1.lowercased() == "y" {
                return ($0.0, $0.1 + 1)
            }
            
            return $0
        }
        
        return count.0 == count.1
    }
}
