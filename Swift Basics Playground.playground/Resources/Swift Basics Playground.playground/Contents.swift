import UIKit

let staticText = "Hello"
//staticText = "New value"
var dynamicText = "Hello"
dynamicText = "Hello World"

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"
print(🐶🐮)

//annotations - Type Annotations: we can provide annotations when you declare a constant or variable, to be clear about the kind of values the constant or variable can store.
let score: Int = 10
var totalMArks: Int = 98

typealias sampleIntType = Int

var makes: sampleIntType

var isEanble: Bool = false

//tuples
var (isSuccess, successCode) = (true, 200)
print(successCode)


//optionals
/**
let lastName: String?
lastName = "kri"

if let retrieveLastName = lastName {
    print(retrieveLastName)
}
*/


// operators - all Arithmetic
// String and characters
/**
let multilineString = """
Hello
are you there
"""
*/


// value type
/**
let userName = "Krihna STV"
var secondUSer = userName
secondUSer = ""
print(userName)
print(secondUSer)
*/


//Array
/**
var arrofIds: [Int] = []
arrofIds.append(2)
arrofIds.append(3)
arrofIds.append(3)
arrofIds.append(4)

print(arrofIds)
*/


//Set
/**
var setofIds = Set<Int>()
setofIds.insert(2)
setofIds.insert(2)
setofIds.insert(3)
setofIds.insert(3)
setofIds.insert(4)
print(setofIds)
 */

//dictionary
/**
var namesofDict :[Int: String] = [:]
namesofDict[1] = "K"
namesofDict[2] = "S"
print(namesofDict)
*/

//control flow statements
/**
for idValue in arrofIds {
    print(idValue)
}

var gamescore = 0
while gamescore < 10  {
    gamescore += 5
    print("its equal")
}
print("outisde")

var finalScore = 0
repeat {
    finalScore += 1
    print(finalScore)
} while finalScore < 10

if 2 == 2 {
    print("Equal")
}

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
 */

// control transfer statements
/**
//continue , break
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue //break
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)
 
//fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
*/

//early exist
/**
//guard
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)!")

    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }

    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])

greet(person: ["name": "Jane", "location": "Cupertino"])
 
//defer
var deferscore = 3
if deferscore < 100 {
    deferscore += 100
    defer {
        deferscore -= 100
    }
    // Other code that uses the score with its bonus goes here.
    print(deferscore)
}

// # available
if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}
*/

//functions
/**
//with arguments, without arguments , with return type, without return type
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
print(greet(person: "Anna"))

//we can create functions with multiple retuns as well
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")

//in-out parameter
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
*/

//function type
/**
 We can assign function to a variable
 We can send function as parameter to another function
 We can return  function as a return type
 We can call nested functions as well: function body calling another function.


func addTwoTraits(_ a: Int, _ b: Int) -> Int {
    return a + b
}

var mathfunction: (Int, Int) -> Int = addTwoTraits(_:_:)
print(mathfunction(2,3))
 */

//closures
/**Self contained blocks of functionality….. Closure in swift similar to blocks in C, lambdas in other prog languages
 closure - we can trailing closures mostly as func parameters
 When you declare a function that takes a closure as one of its parameters, you can write @escaping before the parameter’s type to indicate that the closure is allowed to escape.

func sampleAPIFunction(userID: String, completion:() -> Void) {
    //perfomr actions with userId
    completion()
}

sampleAPIFunction(userID: "23") {
}

func sampleAPIFunction2(userID: String, completion:(String) -> Void) {
    //perfomr actions with userId
    completion("UserName")
}
sampleAPIFunction2(userID: "Krish") { name in
}
//closurea are reference types
*/


//enums
/**
 
 An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.

enum Directions {
 case north, south,east,west
}

//with associated values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)

//implicity assigned raw values, with caseinterable
enum Planet: Int,CaseIterable {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
print(Planet.earth.rawValue)
 
//enum are value types
 enum CompassPoint {
     case north, south, east, west
     mutating func turnNorth() {
         self = .north
     }
 }
 var currentDirection = CompassPoint.west
 let rememberedDirection = currentDirection
 currentDirection.turnNorth()
 print("The current direction is \(currentDirection)")
 print("The remembered direction is \(rememberedDirection)")

 */


//structure, classes
/**
//struct, enum are value types
 https:abhimuralidharan.medium.com/difference-between-value-type-and-a-reference-type-in-ios-swift-18cb5145ad7a

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let vga = Resolution(width: 640, height: 480)

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
print("cinema is now \(hd.width) pixels wide")
print("cinema is now \(cinema.width) pixels wide")


//class functions closures are reference types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
 */


//Properties
/**
 Properties associate values with a particular class, structure, or enumeration. Stored properties store constant and variable values as part of an instance, whereas computed properties calculate (rather than store) a value. Computed properties are provided by classes, structures, and enumerations. Stored properties are provided only by classes and structures.
 

//lazy stored property
class DataImporter {
    /*
    DataImporter is a class to import data from an external file.
    The class is assumed to take a nontrivial amount of time to initialize.
    */
    var filename = "data.txt"
    // the DataImporter class would provide data importing functionality here
}


class DataManager {
    lazy var importer = DataImporter()
    var data: [String] = []
    // the DataManager class would provide data management functionality here
}


let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
//print(manager.importer.filename)

//computed properties
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
    size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
// initialSquareCenter is at (5.0, 5.0)
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")

//redonly computed property
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
 */

// Property Observer
/**
 You have the option to define either or both of these observers on a property:

 willSet is called just before the value is stored.

 didSet is called immediately after the new value is stored.


class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps
*/

//Property Wrapper:
/**
 A property wrapper adds a layer of separation between code that manages how a property is stored and the code that defines a property. For example, if you have properties that provide thread-safety checks or store their underlying data in a database, you have to write that code on every property. When you use a property wrapper, you write the management code once when you define the wrapper, and then reuse that management code by applying it to multiple properties.


@propertyWrapper
struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}

struct SmallRectangle {
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}


var rectangle = SmallRectangle()
print(rectangle.height)

rectangle.height = 10
print(rectangle.height)

rectangle.height = 24
print(rectangle.height)
*/

//Methods
/**
 Methods are functions that are associated with a particular type. Classes, structures, and enumerations can all define instance methods, which encapsulate specific tasks and functionality for working with an instance of a given type.
 
 Instance Methods: Can call by object
 Classes, structure can use instance methods

 
 class Counter {
     var count = 0
     func increment() {
         count += 1
     }
     func increment(by amount: Int) {
         count += amount
     }
     func reset() {
         count = 0
     }
 }

let counterObj = Counter()
counterObj.increment()
print(counterObj.count)

// we can use self to addess the same instance, by default swift assumes that you are referring to a property or method of the current instance

struct CunterNew {
    var count = 0
    func increment() -> Int {
        return count+1
    }
    
    //if we want to update the self properties we need to use mutating for structure. Struct are value types
    
    mutating func increment(by amount: Int) {
        count += amount
    }
}

//Modify value type from within instance methods by mutating
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
 */

//Type Methods
/**
 You can also define methods that are called on the type itself. These kinds of methods are called type methods.
 
 However, you call type methods on the type, not on an instance of that type.
 

class SomeClass {
    class func someTypeMethod() {
        // type method implementation goes here
        print("class - type method")
    }
}
SomeClass.someTypeMethod()

struct SomeClass2 {
    static func someTypeMethod2() {
        // type method implementation goes here
        print("struct static method")
    }
}
SomeClass2.someTypeMethod2()
 */


//Inheritance
/**
 A class can inherit methods, properties, and other characteristics from another class. When one class inherits from another, the inheriting class is known as a subclass, and the class it inherits from is known as its superclass. Inheritance is a fundamental behavior that differentiates classes from other types in Swift.
 
 
 multiple inheritance is a standard feature of some programming languages, like C++, it is not the case for Swift. In Swift a class can conform to multiple protocols, but inherit from only one class.
 
 https://www.vadimbulavin.com/multiple-inheritance-swift/#:~:text=Although%20multiple%20inheritance%20is%20a,conform%20to%20multiple%20protocols%20only.

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")


class Train: Vehicle {
    override func makeNoise() { //method
        print("Choo Choo")
    }
}

class Car: Vehicle {
    var gear = 1
    override var description: String { //prpperty
        return super.description + " in gear \(gear)"
    }
}
 
 */

//Initialization
/**
 
 Initialization is the process of preparing an instance of a class, structure, or enumeration for use. This process involves setting an initial value for each stored property on that instance and performing any other setup or initialization that’s required before the new instance is ready for use.
 
 You can set an initial value for a stored property within an initializer, or by assigning a default property value as part of the property’s definition.

struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var f = Fahrenheit()
print("The default temperature is \(f.temperature)° Fahrenheit")

//default property values
//struct Fahrenheit {
//    var temperature = 32.0
//}


//customization og init - with parameteres
struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
// boilingPointOfWater.temperatureInCelsius is 100.0
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
// freezingPointOfWater.temperatureInCelsius is 0.0


//optional property types
class SurveyQuestion {
    var text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
// Prints "Do you like cheese?"
cheeseQuestion.response = "Yes, I do like cheese."
 */
 
//deinit
/**
 A deinitializer is called immediately before a class instance is deallocated. You write deinitializers with the deinit keyword, similar to how initializers are written with the init keyword. Deinitializers are only available on class types.

 
 class Bank {
     static var coinsInBank = 10_000
     static func distribute(coins numberOfCoinsRequested: Int) -> Int {
         let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
         coinsInBank -= numberOfCoinsToVend
         return numberOfCoinsToVend
     }
     static func receive(coins: Int) {
         coinsInBank += coins
     }
 }

 class Player {
     var coinsInPurse: Int
     init(coins: Int) {
         coinsInPurse = Bank.distribute(coins: coins)
     }
     func win(coins: Int) {
         coinsInPurse += Bank.distribute(coins: coins)
     }
     deinit {
         Bank.receive(coins: coinsInPurse)
     }
 }

 var playerOne: Player? = Player(coins: 100)
 print("A new player has joined the game with \(playerOne!.coinsInPurse) coins")
 // Prints "A new player has joined the game with 100 coins"
 print("There are now \(Bank.coinsInBank) coins left in the bank")
 // Prints "There are now 9900 coins left in the bank"


 playerOne!.win(coins: 2_000)
 print("PlayerOne won 2000 coins & now has \(playerOne!.coinsInPurse) coins")
 // Prints "PlayerOne won 2000 coins & now has 2100 coins"
 print("The bank now only has \(Bank.coinsInBank) coins left")
 // Prints "The bank now only has 7900 coins left"


 playerOne = nil
 print("PlayerOne has left the game")
 // Prints "PlayerOne has left the game"
 print("The bank now has \(Bank.coinsInBank) coins")
 // Prints "The bank now has 10000 coins"
*/

//Error handling
/**

// Error handling is the process of responding to and recovering from error conditions in your program. Swift provides first-class support for throwing, catching, propagating, and manipulating recoverable errors at runtime.
//
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

struct Item {
    var price: Int
    var count: Int
}


class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0


    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }


        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }


        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }


        coinsDeposited -= item.price


        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem


        print("Dispensing \(name)")
    }
}

let obj = VendingMachine()
//obj.coinsDeposited = 100
do {
    try obj.vend(itemNamed: "Chips")
} catch {
    print(error)
}
 */

// Type Casting
/**
 Type casting is a way to check the type of an instance, or to treat that instance as a different superclass or subclass from somewhere else in its own class hierarchy.
 
 Type casting in Swift is implemented with the is and as operators. These two operators provide a simple and expressive way to check the type of a value or cast a value to a different type.

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]

var movieCount = 0
var songCount = 0

//is: Use the type check operator (is) to check whether an instance is of a certain subclass type. The type check operator returns true if the instance is of that subclass type and false if it’s not.

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")

//as: A constant or variable of a certain class type may actually refer to an instance of a subclass behind the scenes. Where you believe this is the case, you can try to downcast to the subclass type with a type cast operator (as? or as!).

for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}
 
 
*/


//Extensions
/**
 Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you don’t have access to the original source code
 
 //computed properties
 extension Double {
     var km: Double { return self * 1_000.0 }
     var m: Double { return self }
     var cm: Double { return self / 100.0 }
     var mm: Double { return self / 1_000.0 }
     var ft: Double { return self / 3.28084 }
 }
 let oneInch = 25.4.mm
 print("One inch is \(oneInch) meters")
 // Prints "One inch is 0.0254 meters"
 let threeFeet = 3.ft
 print("Three feet is \(threeFeet) meters")
 // Prints "Three feet is 0.914399970739201 meters"
 
//initializers
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}

let defaultRect = Rect()
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0),
    size: Size(width: 5.0, height: 5.0))

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let centerRect = Rect(center: Point(x: 4.0, y: 4.0),
    size: Size(width: 3.0, height: 3.0))

//Methods
extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

3.repetitions {
    print("Hello!")
}
 */


//Protocols
/**
 A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol.
 
protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}
let john = Person(fullName: "John Appleseed")
 
protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    func random() -> Double {
        return 100
    }
}

protocol SomeProtocol {
    init(someParameter: Int)
}

class SomeClass: SomeProtocol {
    required init(someParameter: Int) {
        
    }
}
 
 */

//Delegation
/**
 Delegation is a design pattern that enables a class or structure to hand off (or delegate) some of its responsibilities to an instance of another type. This design pattern is implemented by defining a protocol that encapsulates the delegated responsibilities, such that a conforming type (known as a delegate) is guaranteed to provide the functionality that has been delegated.


//protocol --- to send data of menu index click to any Class
protocol PerformMenuActionDelegate: AnyObject {
    func perfromMenuaction(index: Int)
}

// Menu UI ----- we can reuse this Menu for number of screens...
class MenuClass {
    
    weak var delegate: PerformMenuActionDelegate? //associate the delegate
    
    init () {
        
        // after some chceks
        // on click on any index
        delegate?.perfromMenuaction(index: 1) //send delegation to the main class
    }
}


class HomeVC { // one tab of home contains menu
    
    var menuObject = MenuClass() // declar menuobject,
    
    init ()
    {
        // add menu to the view and assign delegate to self, means that if any action perform on the menu that action needs to send back to homeVC
        menuObject.delegate = self
    }
}

// when ever we add delegation to the class, we need to implement that particular protocol
extension HomeVC: PerformMenuActionDelegate { //using extension implementing the protocol, automatically the methods will suggest
    func perfromMenuaction(index: Int) {
        
    }
}

//A protocol can inherit one or more other protocols and can add further requirements on top of the requirements it inherits. The syntax for protocol inheritance is similar to the syntax for class inheritance, but with the option to list multiple inherited protocols, separated by commas:
protocol SomeProtocol {
    
}
protocol InheritingProtocol: SomeProtocol, PerformMenuActionDelegate {
    // protocol definition goes here
}

 */

//Generics
/**
 
 Generic code enables you to write flexible, reusable functions and types that can work with any type, subject to requirements that you define. You can write code that avoids duplication and expresses its intent in a clear, abstracted manner.
 


func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")


//for strings
func swapTwoStrings(_ a: inout String, _ b: inout String) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someString = "hello"
var anotherString = "world"
swapTwoStrings(&someString, &anotherString)
print("someString is now \(someString), and anotherString is now \(anotherString)")

// like this we need to add for everty data type
// here we can use generics
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

swapTwoValues(&someString, &anotherString)
print("someString is now \(someString), and anotherString is now \(anotherString)")

swapTwoValues(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

//The generic version of the function uses a placeholder type name (called T, in this case) instead of an actual type name (such as Int, String, or Double). The placeholder type name doesn’t say anything about what T must be, but it does say that both a and b must be of the same type T, whatever T represents.
 */

// ARC
/**
 Swift uses Automatic Reference Counting (ARC) to track and manage your app’s memory usage. In most cases, this means that memory management “just works” in Swift, and you don’t need to think about memory management yourself. ARC automatically frees up the memory used by class instances when those instances are no longer needed.

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "John Appleseed")
reference2 = reference1
reference3 = reference2
reference2 = nil
reference3 = nil
reference1 = nil
 */

// Dead lock
/**
 However, it’s possible to write code in which an instance of a class never gets to a point where it has zero strong references. This can happen if two class instances hold a strong reference to each other, such that each instance keeps the other alive. This is known as a strong reference cycle.
 
 https://docs.swift.org/swift-book/documentation/the-swift-programming-language/automaticreferencecounting#Strong-Reference-Cycles-Between-Class-Instances

// situations like strong referece at child level
class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
   // weak
    var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized") }
}

var john: Person?
var unit4A: Apartment?
john = Person(name: "John Appleseed")
unit4A = Apartment(unit: "4A")
john!.apartment = unit4A
unit4A!.tenant = john

john = nil
unit4A = nil
 */

// unowned
/**
 

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}


class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

var john: Customer?
john = Customer(name: "John Appleseed")
john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)
john = nil
 */


//Closures
/**
 A strong reference cycle can also occur if you assign a closure to a property of a class instance, and the body of that closure captures the instance. This capture might occur because the closure’s body accesses a property of the instance, such as self.someProperty, or because the closure calls a method on the instance, such as self.someMethod(). In either case, these accesses cause the closure to “capture” self, creating a strong reference cycle.
class HTMLElement {


    let name: String
    let text: String?


    lazy var asHTML: () -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }


    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }


    deinit {
        print("\(name) is being deinitialized")
    }


}

let heading = HTMLElement(name: "h1")
let defaultText = "some default text"
heading.asHTML = {
    return "<\(heading.name)>\(heading.text ?? defaultText)</\(heading.name)>"
}
print(heading.asHTML())

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
print(paragraph!.asHTML())
paragraph = nil

//https://www.avanderlee.com/swift/weak-self/

struct Post {
    let title: String
    var isPublished: Bool = false

    init(title: String) { self.title = title }
}

class Blog {
    let name: String
    let url: URL
    weak
    var owner: Blogger?
    var publishedPosts: [Post] = []
    
    init(name: String, url: URL) { self.name = name; self.url = url }

    deinit {
        print("Blog \(name) is being deinitialized")
    }
    
    func publish(post: Post) {
            /// Faking a network request with this delay: //[weak self] in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.publishedPosts.append(post)
                print("Published post count is now: \(self.publishedPosts.count)")
            }
        }
}

class Blogger {
    let name: String
    var blog: Blog?

    init(name: String) { self.name = name }

    deinit {
        print("Blogger \(name) is being deinitialized")
    }
}


var blog: Blog? = Blog(name: "SwiftLee", url: URL(string: "www.avanderlee.com")!)
var blogger: Blogger? = Blogger(name: "Antoine van der Lee")
blog!.publish(post: Post(title: "Explaining weak and unowned self"))

blog!.owner = blogger
blogger!.blog = blog

blog = nil
blogger = nil
 */

//Access Control
/**
 
 Access control restricts access to parts of your code from code in other source files and modules. This feature enables you to hide the implementation details of your code, and to specify a preferred interface through which that code can be accessed and used.
 
 https://abhimuralidharan.medium.com/swift-3-0-1-access-control-9e71d641a56c
 */
