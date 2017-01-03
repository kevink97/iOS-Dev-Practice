//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Vehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    func drive(speedIncrease: Double) {
        self.currentSpeed += speedIncrease * 2
    }
    
    
    func brake() {
        
    }
}


class SportsCar: Vehicle {
    
    
    override init() {
        super.init()
        self.make = "BMW"
        self.model = "3 series"
    }
    
    override func drive(speedIncrease: Double) {
        self.currentSpeed += speedIncrease * 3
    }
}

