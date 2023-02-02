//
//  Programmers_Level_1_Find_Kim.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/29.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Find_Kim: Tester<[String], String> {
    static func run() {
        let problem = Programmers_Level_1_Find_Kim()
        problem.inputs = [
            ["Jane", "Kim"]
        ]
        
        problem.outputs = [
            "김서방은 1에 있다"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }

    private let kim = "Kim"
    private let resultFormat = "김서방은 %d에 있다"
    
    override func solve(_ input: [String]) -> String {
        let seoul = input
        
        return String(format: resultFormat, seoul.firstIndex(of: kim)!)
    }
}

