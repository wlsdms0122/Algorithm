//
//  Programmers_Level_2_Convert_Parentheses.swift
//  Algorithm
//
//  Created by JSilver on 2020/01/04.
//  Copyright © 2020 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_2_Convert_Parentheses: Tester<String, String> {
    static func run() {
        let problem = Programmers_Level_2_Convert_Parentheses()
        problem.inputs = [
            "(()())()",
            ")(",
            "()))((()"
        ]
        
        problem.outputs = [
            "(()())()",
            "()",
            "()(())()"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    func divide(p: String) -> (String, String) {
        var leftCount: Int = 0
        var rightCount: Int = 0
        
        var index: Int = 0
        for i in (0 ..< p.count) {
            index = i
            
            if p[index] == "(" {
                leftCount += 1
            } else {
                rightCount += 1
            }
            
            if leftCount == rightCount {
                break
            }
        }
        
        let divideIndex = p.index(p.startIndex, offsetBy: index + 1)
        return (String(p[p.startIndex ..< divideIndex]), String(p[divideIndex ..< p.endIndex]))
    }
    
    func isCorrect(p: String) -> Bool {
        var count = 0
        for i in (0 ..< p.count) {
            let charactor = p[i]
            if charactor == "(" {
                count += 1
            } else {
                guard count > 0 else { return false }
                count -= 1
            }
        }
        
        return count == 0
    }
    
    func convert(p: String) -> String {
        guard !p.isEmpty else { return "" }
        let (u, v) = divide(p: p)
        
        if isCorrect(p: u) {
            return "\(u)\(convert(p: v))"
        } else {
            let startIndex = u.index(u.startIndex, offsetBy: 1)
            let endIndex = u.index(u.endIndex, offsetBy: -1)
            let reversed = String(u[startIndex ..< endIndex].map { $0 == "(" ? ")" : "(" })
            return "(\(convert(p: v)))\(reversed)"
        }
    }
    
    override func solve(_ input: String) -> String {
        let p = input
        
        return convert(p: p)
    }
}

extension String {
    subscript(index: Int) -> String {
        let index = self.index(self.startIndex, offsetBy: index)
        return String(self[index])
    }
}
