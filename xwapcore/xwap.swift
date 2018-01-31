//
//  xwap.swift
//  xwapcore
//
//  Created by Andrew on 2018-01-30.
//  Copyright © 2018 hearthedge. All rights reserved.
//

import Foundation


class xwap {
    
    static func transform(_ input: String, by function: (String) -> String) -> String {
        return function(input)
    }
    
    static let funcs = xwap.init()
    
    let exclaim: (String) -> String = {return $0 + "!"}
    
    
}
