//
//  Programmers_Level_2_Pipe.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/20.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_2_Pipe: Tester<String, Int> {
    static func run() {
        let problem = Programmers_Level_2_Pipe()
        problem.inputs = [
            "()(((()())(())()))(())"
        ]
        
        problem.outputs = [
            17
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: String) -> Int {
        let arrangement = input
        
        var stack = 0
        return arrangement.map { String($0) }
            .reduce((previous: "", count: 0)) {
                var count = $0.count
                switch $1 {
                case "(":
                    stack += 1
                    
                case ")":
                    stack -= 1
                    $0.previous == "(" ? (count += stack) : (count += 1)
                    
                default:
                    break
                }
                
                return ($1, count)
            }.count
    }
}
