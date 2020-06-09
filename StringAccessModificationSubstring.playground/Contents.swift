import UIKit

// MARK: - Accessing and Modifying Strings -

// You access and modify strings through properties, methods and by using the subscript syntax
// Each string value has an associated "index type" ie String.Index which corresponds too the position of each Character in the string. You use this Index type instead of Int to subscipt and retrieve values from a string.

// behind the scene Swift's native String type is built from Unicode scalar values.
// because different characters can require difference amounts of memory to store determining which character is at a particular position is different. You cant just use an index offset with an integer.
// You have to iterate over each unicode scalar from the start or end of the string.

// MARK: - startIndex property -
// Use the startIndex property to access the position of the first Character of a String.

// MARK: - endIndex property -

//The endIndex property is the position after the last character in a String. As a result, the endIndex property isn’t a valid argument to a string’s subscript.
var str = "Hello, world!"
var firstChar = str[str.startIndex]


// MARK: - index(before:) method -
var lastChar = str[str.index(before: str.endIndex)]


// MARK: - index(after:) method -
var secondChar = str[str.index(after: str.startIndex)]
var secondToLastChar = str[str.index(str.endIndex, offsetBy: -2) ]







// MARK: - Substrings -
// When you get a substring from a string—for example, using a subscript or a method like prefix(_:)—the result is an instance of Substring, not another string. Substrings in Swift have most of the same methods as strings, which means you can work with substrings the same way you work with strings. However, unlike strings, you use substrings for only a short amount of time while performing actions on a string. When you’re ready to store the result for a longer time, you convert the substring to an instance of String. For example:

let greeting = "Hello, world!"
let indexOfComma = greeting.firstIndex(of: ",") ?? greeting.endIndex

// This variable below is of type String.subsequence IE a substring
let firstWordInGreetingSubstring = greeting[..<indexOfComma]
let newString = String(firstWordInGreetingSubstring)


// MARK: - Comparing Strings -
// String and character equality is checked with the “equal to” operator (==) and the “not equal to” operator (!=)
// Two String values (or two Character values) are considered equal if their extended grapheme clusters are canonically equivalent. Extended grapheme clusters are canonically equivalent if they have the same linguistic meaning and appearance, even if they’re composed from different Unicode scalars behind the scenes.
