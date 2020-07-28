//
//  Programmers_Level_1_Odd_Or_Even.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/06.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Odd_Or_Even: Tester<Int, String> {
    static func run() {
        let problem = Programmers_Level_1_Odd_Or_Even()
        problem.inputs = [
            3,
            4
        ]
        
        problem.outputs = [
            "Odd",
            "Even"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: Int) -> String {
        let num = input
        
        return num % 2 == 0 ? "Even" : "Odd"
    }
}
