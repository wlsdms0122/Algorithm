//
//  Programmers_Level_1_Center_String.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/28.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Center_String: Tester<String, String> {
    static func run() {
        let problem = Programmers_Level_1_Center_String()
        problem.inputs = [
            "abcde",
            "qwer"
        ]
        
        problem.outputs = [
            "c",
            "we"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: String) -> String {
        let s = input
        
        let centerIndex = s.count / 2
        let endIndex = s.index(s.startIndex, offsetBy: centerIndex)
        let startIndex = s.index(endIndex, offsetBy: s.count % 2 == 0 ? -1 : 0)
        return String(s[startIndex ... endIndex])
    }
}
