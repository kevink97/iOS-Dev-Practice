//: Playground - noun: a place where people can play

import UIKit

// Arrays
var arrStr = Array<String>()
var arrDouble : [Double] = [4]
var arr = [5]

arr.append(3)
arr.append(2)
arr.append(1)

arr.remove(at: 2)
arr
arr.removeAll()
arr += [1, 2 , 3, 5, 6]
arr.sort()

// Loops
var oddNumbers = Array<Int>()

for odd in 1...100 {
    if odd % 2 == 1 {
        oddNumbers.append(odd)
    }
}

var sums = Array<Int>()

for num in oddNumbers {
   sums.append(num + 5)
}

var i = 0
repeat {
    print("The sum is: \(sums[i])")
    i += 1
} while (i < sums.count)