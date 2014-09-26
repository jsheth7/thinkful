//
//  main.swift
//  Lesson 2, Assignment 1
//
//  Created by Jayesh Sheth on 9/25/14.
//  Copyright (c) 2014 Jayesh Sheth. All rights reserved.
//

import Foundation

//println("Hello, World!")

class CarFactory {
    var name = ""
    var color = ""
    var horsepower = 0
    var automaticOption = false
}

var myFirstCar = CarFactory()
myFirstCar.name = "Mustang"
myFirstCar.color = "Red"
myFirstCar.horsepower = 200
myFirstCar.automaticOption = false

println("My \(myFirstCar.name) is \(myFirstCar.color) and has \(myFirstCar.horsepower) horsepowers")

var mySecondCar = CarFactory()

mySecondCar.name = "BMW"
mySecondCar.color = "Blue"
mySecondCar.horsepower = 300
mySecondCar.automaticOption = false

println("My \(mySecondCar.name) is \(mySecondCar.color) and has \(mySecondCar.horsepower) horsepowers")

var myThirdCar = CarFactory()

myThirdCar.name = "Maruti"
myThirdCar.color = "Red"
myThirdCar.horsepower = 77
myThirdCar.automaticOption = false

println("My \(myThirdCar.name) is \(myThirdCar.color) and has \(myThirdCar.horsepower) horsepowers")
