//
//  Programmers_Level_1_Sort_Desc.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/29.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Sort_Desc: Tester<String, String> {
    static func run() {
        let problem = Programmers_Level_1_Sort_Desc()
        problem.inputs = [
            "Zbcdefg"
        ]
        
        problem.outputs = [
            "gfedcbZ"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: String) -> String {
        let s = input
        
        return String(s.sorted { $0 > $1 })
    }
}

