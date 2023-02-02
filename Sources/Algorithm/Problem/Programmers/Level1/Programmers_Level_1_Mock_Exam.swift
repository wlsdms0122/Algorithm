//
//  Programmers_Level_1_Mock_Exam.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/26.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Mock_Exam: Tester<[Int], [Int]> {
    static func run() {
        let problem = Programmers_Level_1_Mock_Exam()
        problem.inputs = [
            [1, 2, 3, 4, 5],
            [1, 3, 2, 4, 2]
        ]
        
        problem.outputs = [
            [1],
            [1, 2, 3]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    struct MathGiveUpStudent {
        let pattern: [Int]
        
        func getAnswer(no: Int) -> Int {
            return pattern[no % pattern.count]
        }
    }
    
    override func solve(_ input: [Int]) -> [Int] {
        let answers = input
        
        let students: [MathGiveUpStudent] = [
            MathGiveUpStudent(pattern: [1, 2, 3, 4, 5]),
            MathGiveUpStudent(pattern: [2, 1, 2, 3, 2, 4, 2, 5]),
            MathGiveUpStudent(pattern: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5])
        ]
        
        let scores = students.map({ student in
            answers.enumerated().reduce(0) {
                $1.1 == student.getAnswer(no: $1.0) ? $0 + 1 : $0
            }
        })
        guard let max = scores.max() else { return [] }
        
        return scores.enumerated().filter { $0.element == max }.map { $0.0 + 1 }
    }
}
