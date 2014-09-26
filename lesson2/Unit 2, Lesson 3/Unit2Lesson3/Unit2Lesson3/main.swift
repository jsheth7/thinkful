//
//  main.swift
//  Unit2Lesson3
//
//  Created by Jayesh Sheth on 9/25/14.
//  Copyright (c) 2014 Jayesh Sheth. All rights reserved.
//

import Foundation

class Car {
    
    var name = ""
    var color = ""
    var horsepower = 0
    var automaticOption = ""
    
    func setupCarDetailsWithName (nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool){
        
        self.name = nameOfCar
        self.color = colorOfCar
        self.horsepower = horsepowerOfCar
        self.automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
        
        println("My \(name) is \(color) and has \(horsepower) horsepower and is \(automaticOption)")
    }
}

class TurboCar: Car {
    
    var turboRating = "" //Can be A to F
    var stabilizingSpoiler = ""
    
    func turboCarSpecs (aTurboRating: String, aSpoiler: Bool) -> String{
        
        self.turboRating = aTurboRating
        self.stabilizingSpoiler = (aSpoiler ? "a" : "no")
        
        return ("In addition, this turbo car has a Turbo rating of \(self.turboRating) and \(self.stabilizingSpoiler) spoiler")
        
    }
}

class HybridCar: Car {
    
    var electricHorsepower: Float = 0.0
    
    
    override func setupCarDetailsWithName(nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool){
        
        self.name = nameOfCar
        self.color = colorOfCar
        self.automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
        
        self.electricHorsepower = 0.9 * Float(horsepowerOfCar)
        
        println("My \(name) is \(color) and has \(electricHorsepower) Electric horsepower (bhp) and is \(automaticOption)")
    }
}

//This is the first category of cars
var myRegularCar = Car()
myRegularCar.setupCarDetailsWithName ("Regular car", colorOfCar: "Red", horsepowerOfCar: 200, automaticOptionOfCar: true)

//This is second category of cars: a Turbo car
var myTurboCar = TurboCar()
myTurboCar.setupCarDetailsWithName("Turbo Car", colorOfCar: "Blue", horsepowerOfCar: 300, automaticOptionOfCar: true)
println(myTurboCar.turboCarSpecs("B", aSpoiler: true))

//This is the third category of cars: a Hybrid Car
var myHybridCar = HybridCar()
println()
myHybridCar.setupCarDetailsWithName("Hybrid Car", colorOfCar: "Yellow", horsepowerOfCar: 100, automaticOptionOfCar: true)



