//
//  Programmers_Level_1_Hide_Phone_Number.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/10.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Hide_Phone_Number: Tester<String, String> {
    static func run() {
        let problem = Programmers_Level_1_Hide_Phone_Number()
        problem.inputs = [
            "01033334444",
            "027778888"
        ]
        
        problem.outputs = [
            "*******4444",
            "*****8888"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: String) -> String {
        let phone_number = input
        
        return String(phone_number.enumerated().map {
            $0.offset < phone_number.count - 4 ? "*" : $0.element
        })
    }
}
