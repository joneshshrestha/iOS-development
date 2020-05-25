import Cocoa

var numberOfStopLights: Int = 4
var population: Int = 10
population = 30
let townName: String = "Narayangarh"
var unemployment: Int = 10
let townDescription = "\(townName) has a population of \(population) with \(unemployment) unemployed and \(numberOfStopLights) stoplights"

population = 10000
if population < 10000 {
    print("\(townName) is a small city")
} else if population >= 10000 {
    print("\(townName) is pretty big!")
}

var hasPostOffice: Bool = false

if !hasPostOffice {
    print("Where do we buy the stamps?")
}

print("the maximum value of Int is \(Int.max)")
print("the minimum value of Int is \(Int32.max)")

//let numberOfPages: Int = 10 //declearing Int explicitly
//let numberOfPages = 10 //declearing Int implictly

let y: Int8 = 120
let z = y &+ 10

let d1 = 1.1 + 0.1
let d2: Double = 1.1
if d1 == 1.2 {
    print ("d1 is equal to d2")
}

var statusCode: Int = 505
var errorString: String = "The request failed with the error:"

switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."

case 204:
    errorString += " Successful but no content, 204."

case 300...307:
    errorString += " Redirection, \(statusCode)."

case 400...417:
    errorString += " Client error, \(statusCode)."

case 500...505:
    errorString += " Server error, \(statusCode)."
    
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."

default:
    errorString = "Unexpected error encountered."
}

let error = (code: statusCode, error: errorString)  //tuple
print(error.code, error.error)
