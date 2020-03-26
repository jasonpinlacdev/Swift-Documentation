import UIKit

// swift tour error handling


// error handling

// you represent error by adopting the Error protocol. REMEMBER classes, structures AND enums can adopt/conform to a protocol
// use keyword throws to signify that a function can throw an error. if you throw in the function the code exits immediately

enum JasonError: Error {
    case outOfToothPaste
    case outOfToiletPaper
    case outOfSoap
}


func startDay(hasToiletPaper: Bool, hasToothPaste: Bool, hasSoap: Bool) throws {
    if hasToiletPaper {
        print("Using the toilet.")
    } else {
        throw JasonError.outOfToiletPaper
    }
    
    if hasToothPaste {
        print("Brushing teeth.")
    } else {
        throw JasonError.outOfToothPaste
    }
    
    if hasSoap {
        print("Washing my face.")
    } else {
        throw JasonError.outOfSoap
    }
}


// handling an error using the do-catch block with a try keyword in front of the function that possibly could throw an error

do {
    try startDay(hasToiletPaper: true, hasToothPaste: false, hasSoap: true)
} catch JasonError.outOfToiletPaper {
    print("Can't use the toilet. Out of toilet paper")
} catch JasonError.outOfToothPaste {
    print("Can't brush teeth. Out of tooth paste")
} catch JasonError.outOfSoap {
    print("Cant wash face. Out of soap")
} catch {
    print(error)
}


// another way to handle if throwing function is to use try? which returns an optional if there is a return type with either a value needed to be unwrapped or nil. If there is no return type then the program continues on.
if let startDayResult = try? startDay(hasToiletPaper: true, hasToothPaste: true, hasSoap: true) {
    print("Sweet, time to work!")
} else {
    print("Can't start the day. Missing some supplies.")
}

try? startDay(hasToiletPaper: false, hasToothPaste: false, hasSoap: false)


// the keyword defer is used to create a block of code that gts executed right before the function returns. This executes wether a function threw an error or not.
enum FridgeError: Error {
    case fridgeAlreadyOpen
}

var isFridgeOpen = false
var fridgeContents = ["milk", "eggs"]

func fridgeContains(_ food: String) throws -> Bool {
    guard !isFridgeOpen else { throw FridgeError.fridgeAlreadyOpen }
    
    isFridgeOpen = true // open fridge
    defer {
        print("Closing the fridge. This will always execute as the cleanup code from the defer keyword regardless if the function throws or not.")
        isFridgeOpen = false // close fridge cleanup
    }
    
    if fridgeContents.count == 0 { return false }
    return fridgeContents.contains(food)
}

do {
    let doesItHave = try fridgeContains("Chicken")
    print(doesItHave)
} catch FridgeError.fridgeAlreadyOpen {
    print("Can't open the fridge because someone else is using it.")
} catch {
    print(error)
}


