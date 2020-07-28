//
//  Measure.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/21.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation

func measure(tag: String = "", _ perform: () -> Void) {
    let start = CFAbsoluteTimeGetCurrent()
    perform()
    let diff = CFAbsoluteTimeGetCurrent() - start
    
    let tag = !tag.isEmpty ? "[\(tag)] " : tag
    print("\(tag)Took \(diff) seconds")
}
