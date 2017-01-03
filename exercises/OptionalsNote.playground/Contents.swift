//: Playground - noun: a place where people can play

import UIKit

var lotteryWinnings : Int?

lotteryWinnings = 10

if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
    
}



var vehicle: Car?
vehicle = Car()
vehicle?.model = "Bronco"
//
//if let v = vehicle {
//    if let m = v.model {
//        print(m)
//    }
//}
if let v = vehicle, let m = v.model {
    print(m)
}


var cars: [Car]?

cars = [Car]()
cars?.append(Car())
if let carArr = cars, carArr.count > 0 {
   print(carArr)
}

class Person {
    private var age: Int! // saying that it WILL be set no matter what
    // instead of doing the above, it is best to just initialize it
    
    var getAge: Int { // known as "computed property" aka Getter
        if age == nil {
            age = 0
        }
        return age
    }
    
    func setAge(newAge: Int) {
        self.age = newAge
    }
}

var jack = Person()
jack.setAge(newAge: 20)
print(jack.getAge)


class Dog {
    var species: String
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
    
    init() {
        self.species = "bleh"
    }
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)

var bel = Dog()
print(bel.species)
