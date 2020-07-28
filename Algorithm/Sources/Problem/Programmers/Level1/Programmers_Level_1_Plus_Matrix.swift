//
//  Programmers_Level_1_Plus_Matrix.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/11.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Plus_Matrix: Tester<([[Int]], [[Int]]), [[Int]]> {
    static func run() {
        let problem = Programmers_Level_1_Plus_Matrix()
        problem.inputs = [
            ([[1, 2], [2, 3]], [[3, 4], [5, 6]]),
            ([[1], [2]], [[3], [4]])
        ]
        
        problem.outputs = [
            [[4, 6], [7, 9]],
            [[4], [6]]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([[Int]], [[Int]])) -> [[Int]] {
        let (arr1, arr2) = input
        
        return arr1.enumerated().map { row in
            return row.element.enumerated().map { col in
                return col.element + arr2[row.offset][col.offset]
            }
        }
    }
}

