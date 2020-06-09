import UIKit

// MARK: - OPTIONALS -

// Use optionals for situations where a value can be absent.
//An optional represents two possiblities. Either there is a value (unwrap it to access the value) or there is no value at all IE nil.

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
let typeOfConvertedNumber = type(of: convertedNumber)


let anotherPossibeNumber = "abcd"
let anotherConvertedNumber = Int(anotherPossibeNumber)
let anotherType = type(of: anotherConvertedNumber)


// nil can only be assigned to optional constants or optional variables
var severResponseCode: Int? = 404
severResponseCode = nil


// MARK: - FORCED UNWRAPPING -


// IF statements to check an optional with bang operator (forced unwrapping)
// forced upwrap[ing with the bang operator is potentially dangerous and can crash your program if you try to access a variable that contains nil
if convertedNumber != nil {
    print(convertedNumber!)
}


// MARK: - OPTIONAL BINDING -

// optional binding if used to find out whether an optional contains a value and if so make that value avaialble as a temporary constant or vairable.
// the syntax for optional binding is if-let constantName = someOptional { }

if let number = convertedNumber {
    print(number)
} else {
    print("The optional contained nil.")
}


// you can include as many optional bindings and Boolean conditions in a single if statement as you need to, separated by commas.
//If any of the values in the optional bindings are nil or any Boolean condition evaluates to false, the whole if statement’s condition is considered to be false.
if let firstNumber = Int("7"), let secondNumber = Int("99"), firstNumber > secondNumber {
    print("the firstnumber \(firstNumber) < second number \(secondNumber)")
} else {
    print("one of the conditions failed")
}


// MARK: - NIL COALESCING OPERATOR ?? -

// the nil coalescing operator ?? works like the ternary operator plus it attemps to unwrap the optional and return a value.
// either it returns the value or if the expression/variable returns nil then the provided value to returned.

// This is what is happening explicitly with the ternary operator
// var value = optionalExpression != nil ? optionalExpression! : providedValue

// This is what the nil coalescing operator looks like
// var value = optionalExpression ?? providedValue

var aNumber = Int("123a") ?? 123
print(aNumber)
