import UIKit

// swift tour enums and structures

// enums can have associated methods
// enums by default are given raw values. The first case is always 0 and subsequent cases are incremented unless explicitily initialized like the example below
// use the rawValue property to access the numerical value which can be int, float, double or even strings
// use the optional initializer init?(rawValue:) to create an enum from a rawValue. It either returns the associated enum to the raw value or nil
// also, keep in mind. the case values for enums are values in themselves. if it doesn't make sense to have a raw value you dont have to use them

// enum cases can have another type of value other than the raw value. They can also have an associated value to the enumeration case instance.

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .two:
            return "two"
        case .three:
            return "three"
        case .four:
            return "four"
        case .five:
            return "five"
        case .six:
            return "six"
        case .seven:
            return "seven"
        case .eight:
            return "eight"
        case .nine:
            return "nine"
        case .ten:
            return "ten"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        @unknown default:
            return String(self.rawValue)
        }
    }
}

let king = Rank.king
print(king.simpleDescription())
print(king.rawValue)

func compareRank(cardA: Rank, cardB: Rank){
    if cardA.rawValue < cardB.rawValue {
        print("\(cardA) is less than \(cardB)")
    } else if cardA.rawValue > cardB.rawValue {
        print("\(cardA) is greater than \(cardB)")
    } else {
        print("\(cardA) is equal to \(cardB)")
    }
}

let queen = Rank.queen
print(queen.simpleDescription())
print(queen.rawValue)


compareRank(cardA: king, cardB: queen)


let unknown = Rank(rawValue: 11) // this uses an optional initializer which can return nil because there isn't a raw value > 13 for the Rank enum
if let unknownUnwrapped = unknown {
    print(unknownUnwrapped.simpleDescription())
    print(unknownUnwrapped.rawValue)
}

// also, keep in mind. the case values for enums are values in themselves. if it doesn't make sense to have a raw value you dont have to use them

enum Suit {
    case hearts, diamonds, spades, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .spades:
            return "spades"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .hearts, .diamonds:
            return "red"
        case .clubs, .spades:
            return "black"
        }
    }
}

let hearts = Suit.hearts
hearts.simpleDescription()
hearts.color()


// enum cases can have another type of value other than the raw value. They can also have an associated value to the enumeration case instance.


enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success: ServerResponse = .result("6:00 am", "6:00 pm")
let failure = ServerResponse.failure("Out of cheese")


switch success {
case let .result(timeA, timeB):
    print("Sunrise is at \(timeA) and sunset it at \(timeB).")
case let .failure(message):
    print("failure...\(message)")
}

switch failure {
case let .result(timeA, timeB):
    print("Sunrise is at \(timeA) and sunset it at \(timeB).")
case let .failure(message):
    print("failure...\(message)")
}

// you can see the associated value is extracted from the ServerResponse enum instance and is used withing the switch case let



//  structures

// structures are similar to classes
// the differences are they are value types and the come with a default initializer
// value type means safety through copy when passing, assigning, and copying variables. Each of these action creates a new instance of the value not a reference to the original value

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "the \(rank) of \(suit)"
    }
}


let myCard = Card(rank: .ace, suit: .spades)
myCard.simpleDescription()


func createDeckOfCards() -> [Card] {
    var deck = [Card]()
    for suit in 0...3 {
        for rank in 1...13 {
            if let r = Rank(rawValue: rank) {
                let s: Suit
                switch suit {
                case 0:
                    s = Suit.hearts
                case 1:
                    s = Suit.diamonds
                case 2:
                    s = Suit.clubs
                case 3:
                    s = Suit.spades
                default:
                    continue
                }
                deck.append(Card(rank: r, suit: s))
            } else {
                continue
            }
        }
    }
    return deck
}

let myDeck = createDeckOfCards()
print(myDeck.count)

for card in myDeck {
    print(card.simpleDescription())
}
