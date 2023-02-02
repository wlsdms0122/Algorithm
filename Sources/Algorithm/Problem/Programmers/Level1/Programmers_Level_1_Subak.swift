//
//  Programmers_Level_1_Subak.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/29.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Subak: Tester<Int, String> {
    static func run() {
        let problem = Programmers_Level_1_Subak()
        problem.inputs = [
            3,
            4
        ]
        
        problem.outputs = [
            "수박수",
            "수박수박"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: Int) -> String {
        let n = input
        
        let words: [String] = ["수", "박"]
        return (0 ..< n).reduce("") { "\($0)\(words[$1 % 2])" }
    }
}
