import UIKit

// Swift Tour part 1 variables and control flow

// simple values
var myVariable = 10
let myConstant: Int
myConstant = 10

let explicitFloat: Float = 100.0

// converting a value to a different type. Values are never convereted implicitly
let label = "The width is "
let width = 94
let labelWidth = label + String(width)

// string interpolation
let apples = 4
let appleSummary = "I have \(apples) apples."

let height = 68.0
let hieghtSummary = "I am \(height) inches tall."

// triple quote strings
let quotation = """
Each
word
is
on
its
own
line
"""

// arrays and dictionaries are created using [] and [:]
// access their elements using an index or key

// arrays grow as you add elements dynamically
var shoppingList = ["eggs", "breadb", "milk"]
shoppingList[1]

var occupations = [
    "Jason": "programmer",
    "Mike": "doctor",
    "David": "investor"
]

// accessing a dictionary with a key returns an optional
if let jasonsOccupation = occupations["Jason"] {
    jasonsOccupation
}

// empty array and empty dictionary syntax
var emptyArray: [String] = []
var emptyArray2 = [String]()

var emptyDictionary: [String: String] = [:]
var emptyDictionary2 = [String: String]()

// control flow

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores {
    teamScore += score
}

var isTrue = false

if isTrue {
    print("Yep, it's true")
} else {
    print("Nope, it's false")
}

// if let - optional binding is useful for safely unwrapping an optionals value
// an optional value either contrains a value or it contains nil
// ? after the data type of a variable makes it an optional of that variable type
// for example, String? or Int?

var optionalString: String? = nil
optionalString = "hello"

if let greeting = optionalString {
    greeting
}

// switches support any kind of data and a wide variety of comparison operators
let vegetable = "tomatoe"

switch vegetable {
case "onion":
    print("Ah! My eyes!")
case "tomatoe", "cherry tomatoe":
    print("Nice and red!")
case let somePepper where somePepper.hasSuffix("pepper"):
    print("Ooo, is the \(somePepper) spicy?")
default:
    print("What is this?")
//@unknown default:
    //@unknown default is useful if your switch case is on an enum that at can change at a future point
    // similar to a regular default however, the main difference is that the compiler will produce a warning if all known elements of the enum have not yet been matched.
//    break
}


// iterating a dictionary - using a tuple gets the key-value pair in a random order

var interestingNumbers = [
    "Fibonacci numbers": [1,1,2,3,5,8,13,21,34],
    "Prime numbers": [1,3,5,7,11,13,17,19],
    "Square": [1,4,9,16],
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    print("\(kind): \(numbers)")
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
largest

// while loop

var lap = 1
while lap <= 10 {
    print("You're on lap \(lap)")
    lap += 1
}

// repeat-while loop
var counter = 1
var iSaidSo = true
repeat {
    print("\(counter): I will repeat this 10 times")
    counter += 1
    if counter > 10 {
        iSaidSo = false
    }
} while iSaidSo



// rangers and using rangers for control
let halfOpenRange = 1..<10
let closedRange = 1...10

for number in halfOpenRange {
    print(number)
}

for number in closedRange {
    print(number)
}
