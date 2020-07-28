//
//  Programmers_Level_1_Desc_Natural_Number.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/04.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Desc_Natural_Number: Tester<Int64, Int64> {
    static func run() {
        let problem = Programmers_Level_1_Desc_Natural_Number()
        problem.inputs = [
            118372
        ]
        
        problem.outputs = [
            873211
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: Int64) -> Int64 {
        let n = input
        
        return Int64(String(String(n).sorted { $0 > $1 }))!
    }
}
