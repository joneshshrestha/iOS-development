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

