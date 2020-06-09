import UIKit

// MARK: - Strings and Characters -

// A String is a value type
// A String is a series of the Character type
// The Character type is just an alias for a single character String literal
// Every String is composed of encoding independent unicode characters and provides ways for accessing the characters in various Unicode representions.

var str = "This is a String literal"
var char: Character = "c"

// MARK: - Multiline Strings -

// The ending """ determines how much space is prefixed on each line of the multiline string

var multiLineStr = """
    This is a
    multiline
    string
    .
    """

// You can see the example below there are 4 white spaces after each /n
var anotherMultiLineStr = """
    This is a
    multiline
    string
    .
"""


// MARK: - Empty Strings -

var emptyStr = ""
var anotherEmptyStr = String()

var isEmpty = emptyStr.isEmpty




// MARK: - Strings are Value Types -

// A new string value is copied when its passed to a function or method, or when its assigned to another variable/constant.
// Behind the scenes, Swift’s compiler optimizes string usage so that actual copying takes place only when absolutely necessary. This means you always get great performance when working with strings as value types.


// MARK: - You can access characters of a String using for-in loop -

for char in "Hello, World!" {
    print(char)
}

var anotherString = String(["J", "a", "s", "o", "n"])


var charCount = anotherString.count
