import UIKit

// swift is a type safe language which means you are forced to be clear about the types of the values your code works with. Ex. a String variable cannot hold an Int value. Likewise passing an optional String to a piece of code that requires a non-optional String won't work
// swift performs type checks when compiling your code and flags ans mismatched types as errors.

// fundmental type examples - Int, Float, Double, String, Bool, etc

// primary collection type examples - Array, Set, Dictionary, etc

// variables - store and refer to values by an identifying name. once assigned a value it can be changed later on. Uses the var keyword

// constants - variables that can't be changed once assigned a value. Uses the let keyword

// tuples - comma separated list of zero or more types enclosed in parentheses. Create & pass around a grouping of values as a single compound value

// optional types - handle the absence of a value. Either there is a value and its X or there isnt a value and its nil


// type annotation - explicitly say what value the variable takes using : which means "of type"

// type inference - if you initialize a variable on declaration swift will use type inference to implicitly infer what data type of the variable
// the compiler can deduce the type of a particular expression automatically when it compiles your code



// use the print(_:separator:terminator:) global function to print values. Can take in an arbitrary amount of arguments to print.
// the separator and terminator can be ommitted because they have default values.
// the separator default value is "". This means that between each value printed, for their respective arguments passed in, a space will be used to separate them.
// the terminator default is a "\n". if you don't want the line break pass "" as the argument



// integers
// whole number with no fractional component. Either signed (positive, zero, or negative) or unsigned (positive or zero)
// swift provides signed/unsigned integers in 8, 16, 32, and 64 bit forms
// format is like this. unsigned 8 bits UInt8, signed 64 bits Int64


// integer bounds
print("UInt8.min:", UInt8.min)
print("UInt8.max:", UInt8.max)

print("Int64min:", Int64.min)
print("Int64max:", Int64.max)

print("UInt64min:", UInt64.min)
print("UInt64max:", UInt64.max)

print("Intmin: ", Int.min)
print("Intmax: ", Int.max)

// In most cases you dont need to specify the type of Int you want to use. You can use the default Int which has the same size as the current platform's native size. IE 32-bit platform Int is Int32 and 64-bit platform Int is Int64


// A consistent use of Int for integer values aids in interoperability avoiding the need to convert between different number types



// floating-point numbers
// numbers with fractional components such as 3.14159
// two types - Float is 32 bits and Double is 64 bits
// Double offers more precision as in at least 15 decimal digits
// in situations where either type would be appropriate use Double



// numeric liters
// decimal -  no prefix
// binary - 0b prefix
// octal - 0o prefix
// hexidecimal - 0x prefix


// exponent e means 10^e
// so 3e5 = 3 * 10^5


// formatting numeric liters
// using underscores

var oneMillion = 1_000_000
var oneMillionth = 0.000_001



// Integer conversions
// someType(ofInitialValue)
// you can create your own type conversions by extending the fundamental types
var a: UInt8 = 1
var b: Int16 = 10
var c = Int16(a) + b


// integer and floating point conversions
// converions between inteer and floating point numeric types must be made explicit
// floating points will be truncated when converted to an Int type



var pi = 3.14159
var three = Int(pi)

var myInt = 5
var myDoub = 10.0
var myRational = myDoub + Double(myInt)


// * UNDERSTAND that numeric literals when combined are different that combining types. the rules are different! Ex below works because 10 doesnt have a type and 3.141592 doesnt have a type. These are numeric literals IE integer literal and floating point literal respectively
var numberResult = 10 + 3.141592
