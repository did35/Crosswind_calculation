import UIKit

// 1. Convert degrees to radian

//let degrees = 30.0
//let radians = degrees * Double.pi / 180

// sin of an angle

let sinus = sin(30.0 * Double.pi / 180)

// Crosswind calculation (Vc)
// Vw = Wind
// Vc = Vw * sin angle

var Vc: Double = 0
// Input from the user (Wind = 57 knots in this example).
let Vw:Double = 57

// Angle calculated automatically according to user input (difference between wind and runway).
// Here in this example, 30 degrees was used.
let angle = 30.0

// Function that calculates automatically angles from degrees to radians
func sin2rad(_ num: Double) -> Double {
    return sin(num * Double.pi / 180)
}

// Call the function above for the calculation with the angle (30 degrees) as parameter.
Vc = Vw * sin2rad(angle)

// To round to the highest value, use ceil()
// To round to the lowest value, use floor()
// To round automatically, use round(). Caution, 28.5 will round to 28 and 28.6 will round to 29.
// A wind of  57 knots with a 30 degrees angle from the landing runway will give a crosswind of 28.5 knots (refer to line 30).
// Print the output = 29 knots in this case as I have used the highest value (safe side).
print("Crosswind = \(ceil(Vc)) knots")

