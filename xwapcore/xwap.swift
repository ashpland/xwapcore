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
    
    let question: (String) -> String = {
        theInput in
        return theInput + "?"
    }
    
    
    
    let spatious: (String) -> String = {
        inputString in
        
        return inputString.flatMap({
            (currentCharacter) -> String? in
            
            let curCharString = String(currentCharacter)
            
            switch curCharString {
                case "\n":
                    return curCharString
                default:
                    return curCharString + " "
            }
        }).reduce("", +)
    }
    
    let hashtag: (String) -> String = {
        inputString in
        
        let camelCase:[String] = inputString.components(separatedBy: CharacterSet.whitespacesAndNewlines)
            .map({
                word in
                return word.prefix(1).uppercased() + word.dropFirst()
            })
        
        return "#" + camelCase.joined()
    }
    
    let bounceCase: (String) -> String = {
        inputString in
        
        let bounceWords:[String] = inputString.components(separatedBy: CharacterSet.whitespaces)
            .map({
                word in
                
                var bounceWord = ""
                
                for (index, character) in word.enumerated(){
                    let indexIsEven = (index % 2 == 0)
                    
                    if indexIsEven {
                        bounceWord = bounceWord + String(character).lowercased()
                    }
                    else {
                        bounceWord = bounceWord + String(character).uppercased()
                    }
                }
                
                return bounceWord
                
                
            })
        return bounceWords.joined(separator: " ")
    }
    
   
}

