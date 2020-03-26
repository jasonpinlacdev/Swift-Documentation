import UIKit

// swift tour generics

// generic
// put a name inside angle brackets <> to make a generic function or type

func multiply<T>(item: T, numberOfTimes: Int) -> [T] {
    var res = [T]()
    for _ in 0 ..< numberOfTimes {
        res.append(item)
    }
    return res
}


struct Person {
    var name: String
}

var strings = multiply(item: "Hello", numberOfTimes: 10)
print(strings)

var ints = multiply(item: 1, numberOfTimes: 10)
print(ints)

var bools = multiply(item: true, numberOfTimes: 10)
print(bools)

var persons = multiply(item: Person(name: "Jason"), numberOfTimes: 3)
print(persons)

// you can make generic forms of classes, structs, and enums! Optionals are generic enums

enum optionalValue<Wrapped> {
    case none
    case some(Wrapped) // <---- This enum case contains an associated value
}

// extract the associated value from the enums case using a switch statement and the let keyword

var myOptional: optionalValue<String> = .some("Hello!")
var anotherOptional: optionalValue<String> = .none

switch myOptional {
case .some(let unwrappedValue):
    print(unwrappedValue)
case .none:
    print("nil")
}




//Use where right before the body to specify a list of requirements—for example, to require the type to implement a protocol, to require two types to be the same, or to require a class to have a particular superclass.

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
{
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])

//Writing <T: Equatable> is the same as writing <T> ... where T: Equatable.
