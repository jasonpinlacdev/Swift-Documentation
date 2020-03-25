import UIKit

// swift tour protocols and extensions

// protocol - a protocol is a set of rules and any class, struct, or enum has to conform to these rules by adopting the protocols rules and implementing them.

//defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements

// a protocol can require a proptery that can either be fulfulled by the conforming class using a regular stored property or a computed property

// for properties of a protocol use var and provide the get or/and set.
// get properties doesn't mean the implemented property can't be reassigned
// the implemented property can be either let or var
// if get and set are both used then the implemented property cannot be let
// the mutating keyworld allows conforming structures to allow the implemented property to be modified

protocol ExampleProtocol {
    var name: String { get set }
    var simpleDescription: String { get }
    mutating func adjust()
}


class SimpleClass: ExampleProtocol {
    var className = "class"
    var name: String {
        get {
            return className
        }
        set {
            className = newValue
        }
    }
    var simpleDescription: String = "A very simple class"

    func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var c = SimpleClass()
c.adjust()
print(c.simpleDescription)
print(c.name)
c.name = "classy"
print(c.name)


// properties are immutable by a structures methods. In order to allow modification use the mutating keyword on the method
struct SimpleStructure: ExampleProtocol {
    var structName = "struct"
    var name: String {
        get {
            return structName
        }
        set {
            structName = newValue
        }
    }
    var simpleDescription = "A very simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}




// extensions add functionality to an already existing type.

extension Double {
    // computed property to the Double structure
    var absoluteValueComputedProperty: Double {
        get {
            if self >= 0 {
                return self
            } else {
                return -self
            }
        }
        set {
            print("Hello world")
        }
    }
    
    // method to the Double structure
    func absoluteValueMethod() -> Double {
        if self >= 0 {
            return self
        } else {
            return -self
        }
    }
}

var d: Double = -12.3
d.absoluteValueComputedProperty = 1.0
d.absoluteValueComputedProperty


 use extensions to add protocol conformance to a type that is declared elsewhere, or even to a type that you imported from a library or framework.

extension Int: ExampleProtocol {
    var name: String {
        get {
            return String(self)
        }
        set {
            // do nothing
        }
    }

    var simpleDescription: String {
        get {
            return "number \(self)"
        }
    }

    mutating func adjust() {
        self += 99
    }
}

var number = 5
print(number.name)
number.name = "hello"
number.simpleDescription
number.adjust()
number
