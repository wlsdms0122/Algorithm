//
//  Programmers_Level_1_Make_Strange_String.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/03.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Make_Strange_String: Tester<String, String> {
    static func run() {
        let problem = Programmers_Level_1_Make_Strange_String()
        problem.inputs = [
            "try hello world",
            "",
            "as   gd",
            "sp ace"
        ]
        
        problem.outputs = [
            "TrY HeLlO WoRlD",
            "",
            "As   Gd",
            "Sp AcE"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: String) -> String {
        let s = input
        
        return s.reduce((result: "", index: 0)) {
            guard $1 != " " else { return ($0.result + String($1), 0) }
            
            let letter = $0.index % 2 == 0 ? $1.uppercased() : $1.lowercased()
            return ($0.result + letter, $0.index + 1)
        }.result
    }
}
