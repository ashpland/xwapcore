//
//  main.swift
//  xwapcore
//
//  Created by Andrew on 2018-01-30.
//  Copyright © 2018 hearthedge. All rights reserved.
//

import Foundation


let sampleInput = "Example text"

print(xwap.transform(sampleInput, by: xwap.funcs.exclaim))
print(xwap.transform(sampleInput, by: xwap.funcs.question))
print(xwap.transform(sampleInput, by: xwap.funcs.spatious))

