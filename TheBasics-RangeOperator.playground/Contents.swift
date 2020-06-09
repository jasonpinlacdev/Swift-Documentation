import UIKit


// MARK: - RANGE OPERATOR -

// Closed Range Operator

for i in 0...3 {
    print(i)
}



// Half-Open Range Operator

for i in 0..<3 {
    print(i)
}


// One-Sided Ranges
// can be used in subscripts and also can be checked it a range contains a value

var names = ["Jason", "Michael", "David", "Anna", "Jose", "Tyler"]

print()
for name in names[...3] {
    print(name)
}

print()
for name in names[..<3] {
    print(name)
}

print()
for name in names[4...] {
    print(name)
}


var myRange = ...5
print(myRange.contains(-99))
