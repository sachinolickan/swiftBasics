import UIKit

let myConstant = 60
var myVariable = 78
myVariable = 90
var greeting = "Hello, playground"

//Explicitly Declaring Types
let explicitFloat:Float = 90.90
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
let apples = 3
let oranges = 5

//Attach Integers with String
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

//To Implement multiline
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

//Initializing array and dictionaries
shoppingList = []
occupations = [:]

var shoppingList = ["catfish", "water", "tulips"]
//To replace at an index
shoppingList[2] = "bottle of water"
//To add to an array
shoppingList.append("blue paint")

//Dictionary Operations
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
occupations["Kaylee"] = "Mason"

print(shoppingList)
print(occupations)


// create tuple with two elements
var product = ("MacBook", 1099.99)
// access tuple elements
print("Name:", product.0)
print("Price:", product.1)


let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"
//If you only need some of the tuple’s values, ignore parts of the tuple with an underscore (_) when you decompose the tuple:
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

//naming tuples
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")




//controll flow statements
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 10
for score in individualScores {
    if score > 100 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

//Optional Values
var optionalString: String?
print(optionalString == nil)//Returns true

var optionalString2: String? = "Hello"
print(optionalString2 == nil)//Returns false

var optionalName: String? = "John Appleseed"
var possibleNumber = "123"
var greetings = "Hey"
if let name = optionalName {
   greetings = "Hello, \(name)"
}else{
    greetings = "hey there"
}

print(greetings);
//forced unwrapping
print(optionalString2!)

//Guard let
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}

//Optional Chaining


//Another way to handle optional values is to provide a default value using the ?? operator. If the optional value is missing, the default value is used instead.
let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting)


//Strings
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
var variableString = "Horse"
variableString += " and carriage"

//String Interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
//Count of characters
var word = "cafe"
print("the number of characters in \(word) is \(word.count)")

let greeting1 = "Guten Tag!"
greeting1[greeting1.startIndex]
greeting1[greeting1.index(before: greeting1.endIndex)]

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
welcome.remove(at: welcome.index(before: welcome.endIndex))


//Arrays
var newArray:[String]=[]
newArray = ["a","b"]
newArray += ["c"]
newArray [0]
newArray [0] = "z"
newArray [1...2] = ["d","e"]
for (index, value) in newArray.enumerated() {
    print("Item \(index + 1): \(value)")
}

//Sets
var letters = Set<Character>()
letters.insert("a")
letters = []
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
favoriteGenres

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

//Dictionary
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
airports["LHR"] = "London Heathrow"
airports["APL"] = "Apple International"
airports["APL"] = nil
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
// Airport code: LHR
// Airport code: YYZ

for airportName in airports.values {
    print("Airport name: \(airportName)")
}
let airportCodes = [String](airports.keys)
// airportCodes is ["LHR", "YYZ"]

let airportNames = [String](airports.values)
// airportNames is ["London Heathrow", "Toronto Pearson"]



//control flow

//For In
let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
    print(tickMark);
}
let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    // render the tick mark every 3 hours (3, 6, 9, 12)
    print(tickMark);
}





//Switch statements
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("everything is fine")
}
//tuples using switch
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
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
//Continue
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)

//Guard-let //Very useful
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
// Prints "Hello John!"
// Prints "I hope the weather is nice near you."
greet(person: ["name": "Jane", "location": "Cupertino"])
// Prints "Hello Jane!"
// Prints "I hope the weather is nice in Cupertino."

//Looping over dictionary
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

//Question to ask?
var largest = 0
let keyName = "Fibonacci"
for (key, values) in interestingNumbers {
    for number in values {
        if(key == keyName){
            if number > largest {
                largest = number
            }
        }
    }
}
print(largest)

//While and Repeat
var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

//Range of Indices
//include upper and lower values
var total = 0
for i in 0...4 {
    total += i
}
print(total)

//exclude lower and upper values
var total2 = 0
for i in 0..<4 {
    total2 += i
}
print(total2)



//Functions - basic idea will look later and run cart feature later
func greet(text person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(text:"Bob", day: "Tuesday")

//By default, functions use their parameter names as labels for their arguments. Write a custom argument label before the parameter name, or write _ to use no argument label.

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")


func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

//let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
//let bounds = minMax(array: [])
if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for that parameter.
}
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))
// Prints "Hello Bill!  Glad you could visit from Cupertino."

func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(1, secondParameterName: 2)


//In-out
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// Prints "someInt is now 107, and anotherInt is now 3"
//Just initial commit






