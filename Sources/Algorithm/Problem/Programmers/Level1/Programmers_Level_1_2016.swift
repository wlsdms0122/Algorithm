//
//  Programmers_Level_1_2016.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/27.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_2016: Tester<(Int, Int), String> {
    static func run() {
        let problem = Programmers_Level_1_2016()
        problem.inputs = [
            (1, 1),
            (1, 3),
            (2, 1),
            (3, 1),
            (5, 24),
            (12, 31),
            (1, 7)
        ]
        
        problem.outputs = [
            "FRI",
            "SUN",
            "MON",
            "TUE",
            "TUE",
            "SAT",
            "THU"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    enum WeekDay: String, CaseIterable {
        case SUN
        case MON
        case TUE
        case WED
        case THU
        case FRI
        case SAT
    }
    
    override func solve(_ input: (Int, Int)) -> String {
        let (a, b) = input
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-M-d"
        
        let date = formatter.date(from: "2016-\(a)-\(b)")!
        return WeekDay.allCases[Calendar.current.component(.weekday, from: date) - 1].rawValue
    }
}
