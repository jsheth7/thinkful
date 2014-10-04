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
    
    override var name : String {
        get{
            super.name = "Hybrid"
            return super.name + "Tech"
        }
        
        set
        {
            //Nothing here for now.
        }
    }
    
    override func setupCarDetailsWithName(nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool){
        
        self.color = colorOfCar
        self.automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
        
        self.electricHorsepower = 0.9 * Float(horsepowerOfCar)
        
        println("My \(name) is \(color) and has \(electricHorsepower) Electric horsepower (bhp) and is \(automaticOption)")
    }
}


class PickupTruck: Car {
    
    var cargoBedWidth = 0.0
    var cargoBedLength = 0.0
    
    //Is the totalCargoArea a square?
    var totalCargoArea : Double {
        
        get {
            
            return cargoBedWidth * cargoBedLength
        }// Closes the getter declaration
        
        
        set {
            //Can newValue be called anything ?
            cargoBedLength = sqrt(newValue)
            cargoBedWidth = cargoBedLength
        } // Closes the setter declaration
        
    } //Closes the variable declaration
    
} //Closes the class declaration

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

//This is the fourth category of cars: a Pickup Truck
var myPickupTruck = PickupTruck()

//Scenario 1  - Use the setter to work back to calculate the length and width
myPickupTruck.totalCargoArea = 3000.0

println()
//This is assuming that we're dealing with a square here:
println("The Truck's cargo bed length is: \(myPickupTruck.cargoBedLength) and the cargo bed width is \(myPickupTruck.cargoBedWidth) and the total cargo area is \(myPickupTruck.totalCargoArea)")

//Scenario 2  - Set the length and width of cargo area and use only the getter to calculate the area
myPickupTruck.cargoBedLength = 50
myPickupTruck.cargoBedWidth = 60

println()
println("The Truck's cargo bed length is: \(myPickupTruck.cargoBedLength) and the cargo bed width is \(myPickupTruck.cargoBedWidth) and the total cargo area is \(myPickupTruck.totalCargoArea)")




