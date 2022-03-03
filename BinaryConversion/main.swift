//
//  main.swift
//  BinaryConversion
//
//  Created by Jacob Pantuso on 2022-03-03.
//

import Foundation

func decimalToBinary(decimalValue: String) -> String{
    let value = Int(decimalValue)
    let binary = String(value!, radix: 2)
    return binary
}

func binaryToDecimal(binaryValue: String) -> Int {
    var decimal = 0
    for digit in binaryValue {
        decimal = decimal*2 + Int(String(digit))!
    }
    return decimal
}

print("👋🏼 Welcome to the Binary Conversion Application!")
var flag = true
while flag {
    print("Enter 🅠 at any time to quit")
    print("Please enter an option ID: \n1️⃣ Binary to Decimal \n2️⃣ Decimal to Binary")
    let selection = readLine()
    if selection?.lowercased() == "q" {
        print("Goodbye!")
        break
    } else if selection == "1" {
        print("Please enter the corresponding binary number you would like to convert:")
        let binaryValue = readLine()
        let result = binaryToDecimal(binaryValue: binaryValue!)
        print("The result of the conversion is: \(result)\n")
    } else if selection == "2" {
        print("Please enter the corresponding decimal number you would like to convert:")
        let decimalValue = readLine()
        let result = decimalToBinary(decimalValue: decimalValue!)
        print("The result of the conversion is: \(result)\n")
    }
}



