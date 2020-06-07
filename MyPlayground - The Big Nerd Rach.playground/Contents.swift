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

let error = (code: statusCode, error: errorString)
error.code
error.error

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case(404, 404):
    print("No items found.")
case(404, _):
    print("First item not found.")
case(_, 404):
    print("Second item not found.")
default:
    print("All items found")
}

let age = 19

if case 18...35 = age, age >= 21 {
    print ("In cool demographic and of drinking age.")
}

let point = (x: 1, y: 4)

switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) lies in quadrant 1")
case let q2 where (point.x > 0) && (point.y < 0):
    print("\(q2) lies in quadrant 2")
case let q3 where (point.x < 0) && (point.y < 0):
    print("\(q3) lies in quadrant 3")
case let q4 where (point.x > 0) && (point.y < 0):
    print("\(q4) lies in quadrant 4")
case (_, 0):
    print("\(point) lies in y-axis")
case (0, _):
    print("\(point) lies in x-axis")
default:
    print("Case not covered.")
}

//Silver Challenge

let tempAge = 21

if case 18...30 = tempAge, tempAge >= 21, tempAge < 30 || tempAge > 39 {
    print("\(tempAge) is in the cool demographics, of drinking age in the United States and not in their thirties")
}

//for-loop
var myFirstInt: Int = 0

for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
}

for i in 1...100 {
    if i % 3 == 0 {
        print(i)
    }
}


