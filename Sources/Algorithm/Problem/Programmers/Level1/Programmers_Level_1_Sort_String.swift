//
//  Programmers_Level_1_Sort_String.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/28.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Sort_String: Tester<([String], Int), [String]> {
    static func run() {
        let problem = Programmers_Level_1_Sort_String()
        problem.inputs = [
            (["sun", "bed", "car"], 1),
            (["abce", "abcd", "cdx"], 2)
        ]
        
        problem.outputs = [
            ["car", "bed", "sun"],
            ["abcd", "abce", "cdx"]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([String], Int)) -> [String] {
        let (strings, n) = input
        
        return strings.map { ($0, String($0[$0.index($0.startIndex, offsetBy: n)])) }
            .sorted { (lhs: (String, String), rhs) -> Bool in lhs.1 == rhs.1 ? lhs.0 < rhs.0 : lhs.1 < rhs.1 }
            .map { $0.0 }
    }
}
