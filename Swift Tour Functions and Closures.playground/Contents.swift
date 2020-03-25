import UIKit

// swift tour part 2 functions and closures


// functions
// by default functions use their parameter names as labels for their arguments. Or you can give an argument label explicitly or have no label at all.
func greeting(name: String, day: String, lunchSpecial: String) -> String {
    return "Hello \(name). Today is \(day)."
}
print(greeting(name: "Jason", day: "Monday", lunchSpecial: "Spaghetti and meat ball"))


func explicitLabelFunction(explicitArgument implicitParam: String) {
    print(implicitParam)
}
explicitLabelFunction(explicitArgument: "Hi")


func noArgumentLabelFunction(_ implicitParam: String) {
    print(implicitParam)
}
noArgumentLabelFunction("Hello")


// tuples - use a tuple to make a compound value
func getStatistics(numbers: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = 0
    var max = 0
    var sum = 0
    
    for number in numbers {
        if number > min {
            min = number
        }
        
        if number < max {
            max = number
        }
        
        sum += number
    }
    return (min, max, sum)
}
var res = getStatistics(numbers: [1,2,3,4,5])
print(res.0, res.min)
print(res.1, res.max)
print(res.2, res.sum)

// functions can be nested. nested functions have access to variables declared on the outers scope

func returnFifteen() -> Int {
    var number = 10
    func add5() {
        number += 5
    }
    add5()
    return number
}

print(returnFifteen())


// functions are a first class type which means they can return another function as its return type value

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return number + 1
    }
    return addOne
}

var incrementer = makeIncrementer()
print(incrementer(7))

// functions can take other functions as arguments

func hasMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func isLessThan10(number: Int) -> Bool {
    if number < 10 {
        return true
    }
    return false
}

var result = hasMatches(list: [88,22,15,7,99,103], condition: isLessThan10)
print(result)


// functions are a special case of closures; blocks of code that can be called later
// closures keep strong refrences to variables that were used in its body when it was created. Even if the closure is executed later in a different scope.

var numbers = [1,2,3]
var tripledNumbers = numbers.map({ (number: Int) -> Int in
    let result = number * 3
    return result
})

print(tripledNumbers)

var oddNumbersZeroOut = numbers.map({ (number: Int) -> Int in
    if number % 2 == 1 {
        return 0
    } else {
        return number
    }
})

print(oddNumbersZeroOut)

// closures. You can refer to closure arguments as numbers and also if the function that takes the closure has no other arguments you can ommit the function operators

var sortedNumbers = numbers.sorted {
    $0 < $1
}
print(sortedNumbers)
