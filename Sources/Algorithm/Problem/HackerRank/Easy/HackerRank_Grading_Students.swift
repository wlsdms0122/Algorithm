//
//  HackerRank_Grading_Students.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/26.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester
import Foundation

class HackerRank_Grading_Students: Tester<[Int], [Int]> {
    static func run() {
        let problem = HackerRank_Grading_Students()
        problem.inputs = [
            [73, 67, 38, 33],
            [99]
        ]
        
        problem.outputs = [
            [75, 67, 40, 33],
            [100]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    private func ceil(_ value: Int, multiple: Int) -> Int {
        return Int((Double(value) / Double(multiple)).rounded(.up) * Double(multiple))
    }
    
    override func solve(_ input: [Int]) -> [Int] {
        let grades = input
        
        return grades.map {
            guard $0 >= 38 else { return $0 }
            
            let grade = ceil($0, multiple: 5)
            guard grade - $0 < 3 else { return $0 }
            
            return grade
        }
    }
}
