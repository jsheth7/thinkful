//
//  main.swift
//  Lesson 2, Assignment 2
//
//  Created by Jayesh Sheth on 9/25/14.
//  Copyright (c) 2014 Jayesh Sheth. All rights reserved.
//

import Foundation


class CarFactory {
    var name = ""
    var color = ""
    var horsepower = 0
    var automaticOption = ""
    
    func description(){
        println("My \(name) is \(color) and has \(horsepower) horsepowers")
    }
    
    func setupCarDetailsWithName(nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool) {
        self.name = nameOfCar
        self.color = colorOfCar
        self.horsepower = horsepowerOfCar
        self.automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
    }
    
}

var myFirstCar = CarFactory()
myFirstCar.setupCarDetailsWithName(
     "Mustang",
    colorOfCar: "Red",
    horsepowerOfCar: 200,
    automaticOptionOfCar: true )


myFirstCar.description()

var mySecondCar = CarFactory()

mySecondCar.setupCarDetailsWithName(
    "BMW",
    colorOfCar: "Blue",
    horsepowerOfCar: 300,
    automaticOptionOfCar: false )

mySecondCar.description()




