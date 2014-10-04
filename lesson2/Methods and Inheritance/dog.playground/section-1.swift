// Playground - noun: a place where people can play

import UIKit

class Dog {
    let name: String
    let color: UIColor
    
    init(name: String, color: UIColor) {
        self.name = name
        self.color = color
    }
    
    func speak() {
        println("Ruff!")
    }
    
    func sit() {
        println("I'm \(name) and I'm sitting :)")
    }
    
    class func genus() -> String {
        return "Canis"
    }
}


class Animal  {
    
    let name: String
    let color: UIColor
    
    init(name: String, color: UIColor) {
        self.name = name
        self.color = color
    }

}

class Cat : Animal{
    
    func speak() {
        println("Meow")
    }
    
    func sit() {
        println("I'm \(name) and I'm a cat who doesn't sit!")
    }
}

let white = UIColor.whiteColor()
let spunky = Dog(name: "Spunky", color: white)
spunky.speak()
spunky.sit()

let black = UIColor.blackColor();
let Oscar = Cat(name: "Oscar", color: black);
Oscar.speak()
Oscar.sit()

let genusOfDog = Dog.genus()
println("All dogs belong to the \(genusOfDog) genus.")



