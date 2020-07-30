//
//  Toss_색상_코드_변환하기.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/30.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class Toss_색상_코드_변환하기: Tester<String, [Int]> {
    static func run() {
        let problem = Toss_색상_코드_변환하기()
        problem.inputs = [
            "#3A7B9F",
            "#EFC2E7",
            "#C050F5"
        ]
        
        problem.outputs = [
            [58, 123, 159],
            [239, 194, 231],
            [192, 80, 245]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: String) -> [Int] {
        let colorCode = input
        
        let color = String(colorCode.dropFirst())
            .split(length: 2)
            .compactMap { Int($0, radix: 16) }
        
        return [color[0], color[1], color[2]]
    }
}
