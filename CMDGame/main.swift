//
//  main.swift
//  CMDGame
//
//  Created by Wajiha Kanwal on 12/02/2016.
//  Copyright (c) 2016 Wajiha Kanwal. All rights reserved.
//

import Foundation

let answer = randomIntBetween(0, 100)
var turns = 1

while (true){
    println("Guess #\(turns): Enter a number between 1 and 100.")
    
    let userInput = input()
    
    let inputAsInt = userInput.toInt()
    // OR
    // let inputAsInt = Int(userInput)
    
    if let guess = inputAsInt {
        if(guess > answer) {
            println("Lower!")
        } else if(guess < answer) {
            println("Higher!")
        } else {
            println("Correct! The answer was \(answer).")
            break
        }
    }
    else{
        println("Invalid input! Please enter a number.")
        continue
    }
    turns = turns + 1
}
println("It took you \(turns) turns")