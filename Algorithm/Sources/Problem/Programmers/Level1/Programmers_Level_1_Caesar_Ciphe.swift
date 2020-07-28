//
//  Programmers_Level_1_Caesar_Ciphe.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/02.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Caesar_Ciphe: Tester<(String, Int), String> {
    static func run() {
        let problem = Programmers_Level_1_Caesar_Ciphe()
        problem.inputs = [
            ("AB", 1),
            ("z", 1),
            ("a B z", 4)
        ]
        
        problem.outputs = [
            "BC",
            "a",
            "e F d"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (String, Int)) -> String {
        let (s, n) = input
        
        let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }
        return String(s.map {
            guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else { return $0 }
            let letter = alphabets[(index + n) % alphabets.count]
            return $0.isUppercase ? Character(letter.uppercased()) : letter
        })
    }
}
