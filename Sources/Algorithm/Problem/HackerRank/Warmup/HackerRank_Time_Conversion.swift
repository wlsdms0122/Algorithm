//
//  HackerRank_Time_Conversion.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/26.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester
import Foundation

class HackerRank_Time_Conversion: Tester<String, String> {
    static func run() {
        let problem = HackerRank_Time_Conversion()
        problem.inputs = [
            "07:05:45PM"
        ]
        
        problem.outputs = [
            "19:05:45"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: String) -> String {
        let s = input
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ssa"
        
        let date = formatter.date(from: s)!
        formatter.dateFormat = "HH:mm:ss"
        
        return formatter.string(from: date)
    }
}
