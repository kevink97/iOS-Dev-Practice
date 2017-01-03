//: Playground - noun: a place where people can play

import UIKit

func combineArray(a1: [String], a2: [String]) -> [String] {
    let length = a1.count > a2.count ? a1.count : a2.count
    
    var combinedArray = [String]()
    
    for i in 0..<length {
        if (i < a1.count) {
            combinedArray.append(a1[i])
        }
        if (i < a2.count) {
            combinedArray.append(a2[i])
        }
    }
    return combinedArray
}

print(combineArray(a1: ["a", "b", "c"], a2: ["bo", "ro", "me"]))