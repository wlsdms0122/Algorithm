//
//  Programmers_Level_1_Secret_Map.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/13.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Secret_Map: Tester<(Int, [Int], [Int]), [String]> {
    static func run() {
        let problem = Programmers_Level_1_Secret_Map()
        problem.inputs = [
            (5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28]),
            (6, [46, 33, 33, 22, 31, 50], [27, 56, 19, 14, 14, 10])
        ]
        
        problem.outputs = [
            ["#####", "# # #", "### #", "#  ##", "#####"],
            ["######", "### # ", "## ## ", " #### ", " #####"]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (Int, [Int], [Int])) -> [String] {
        let (n, arr1, arr2) = input
        
        return arr1.enumerated().map { $0.element | arr2[$0.offset] }
            .map { String($0, radix: 2) }
            .map { binary in
                String((0 ..< n).map {
                    let index = binary.count + $0 - n
                    guard index >= 0 else { return " " }
                    return Array(binary)[index] == "0" ? " " : "#"
                })
            }
    }
}
