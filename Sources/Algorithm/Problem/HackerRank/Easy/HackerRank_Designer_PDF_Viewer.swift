//
//  HackerRank_Designer_PDF_Viewer.swift
//  Algorithm
//
//  Created by JSilver on 2020/08/10.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Designer_PDF_Viewer: Tester<([Int], String), Int> {
    static func run() {
        let problem = HackerRank_Designer_PDF_Viewer()
        problem.inputs = [
            ([1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], "abc")
        ]
        
        problem.outputs = [
            9
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([Int], String)) -> Int {
        let (h, word) = input
        
        return word.map { h[Int($0.asciiValue! - Character("a").asciiValue!)] }
            .max()! * word.count
    }
}
