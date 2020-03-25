import UIKit

// Swift Tour Classes and Objects

// classes. classes have properties and methods.
// classes don't come with a default initializer and need an initializer defined or need to have all properties initialized
// every property needs a default value assigned. Either in its declaration or through the initializer

class NamedShape {
    var numberOfSides:Int
    let name: String
    
    init(numberOfSides: Int, name: String) {
        self.numberOfSides = numberOfSides
        self.name = name
    }
    
    deinit {
        print("\(name) with \(numberOfSides) is destroyed.")
    }
    
    func simpleDescription() -> String {
        return "I am a \(name) shape made up of \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double) {
        self.sideLength = sideLength
        super.init(numberOfSides: 4, name: "square")
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return super.simpleDescription() + "The length of my sides is \(sideLength)."
    }
}

class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
        super.init(numberOfSides: 0, name: "circle")
    }
    
    func area() -> Double {
        return Double.pi * radius * radius
    }
    
    override func simpleDescription() -> String {
        return super.simpleDescription() + "My radius is \(radius)."
    }
}
    
var shape = NamedShape(numberOfSides: 0, name: "unknown")
shape.simpleDescription()

var square = Square(sideLength: 5.5)
square.simpleDescription()

var circle = Circle(radius: 7.9)
circle.area()
circle.simpleDescription()

// in addition to regular properties, classes can have computed properties that contain a getter and setter. These are blocks of code that only execute when the property is invoked each and every single time

class EquilateralTriangle: NamedShape {
    var sideLength: Double
    
    // perimeter property is a computed property
    var perimeter: Double {
        get {
            return sideLength * 3
        }
        set (daNewValue) {
            // setter contains an implicit variable called newValue which contains the value being set. You can rename it explicitly
            sideLength = daNewValue / 3.0
        }
    }
    
    init(sideLength: Double) {
        self.sideLength = sideLength
        super.init(numberOfSides: 3, name: "equilateral triangle")
    }
    
    override func simpleDescription() -> String {
        return super.simpleDescription() + "The length of my sides is \(sideLength)"
    }
}

var equTriangle = EquilateralTriangle(sideLength: 3.2)
equTriangle.simpleDescription()
equTriangle.sideLength
equTriangle.perimeter
equTriangle.perimeter = 15.0
equTriangle.sideLength
