import Foundation
import UIKit

/* ---- Var vs Const ------ */

/*
 - immutable concept
 - let cannot be changed value after initialize
*/
let name = "Mohamed"

/*
 - mutable concept
 - var can be changed value after initialize
*/

var age = 10

/* ------ Data Types ------ */

/* Integer */

let numInt8: Int8 = 127  // value: -128 to 127 size: 1byte

let numUInt8: UInt8 = 255  //  value: 0 to 255 size: 1byte

let numInt16: Int16 = 32767  // value: -32768 to 32767 size: 2bytes

let numUInt16: UInt16 = 65535  // value: 0 to 65535 size: 2bytes

let numInt32: Int32 = 2_147_483_647  // value: -2147483648 to 2147483647 size: 4bytes

let numUInt32: UInt32 = 4_294_967_295  // value: 0 to 4294967295 size: 4bytes

let numIn64: Int64 = 9_223_372_036_854_775_807  // value: -9223372036854775808 to 9223372036854775807 size: 8bytes

let numUIn64: UInt64 = 18_446_744_073_709_551_615  // value: 0 to 18446744073709551615 8bytes

/* Float and Double */

let floatNum: Float = 3.14  // value after decimal point to 6 digit , size 4 bytes

let doubleNum: Double = 3.14159265358979323846  // value after decimal point to 15 decimal digit, size 8 bytes

/* Boolean */

let isMale: Bool = true  // value: true or false, size: 1 byte

/* Character */

let myChar: Character = "A"  // value: 1 char in double coute, size: 1 byte

/* String */

let myString: String = "Hello World"  // value: from 2 char in double coute, size: NON

let counactenateString: String = "Hello" + " " + "World"

/* ------- Type Inference Vs Type Annotation ------- */

// Type Annotation

let annotateType: String = "Hello World"

// Type Inference

let inferType = "Hello World"

/* ------ Collection Data Types ------ */

// Arrays

var testArray: [Int] = [1, 2, 3, 4, 5]

// chnage value of element by index
testArray[0] = 9

// add new element
testArray.append(18)

//Tuples

let myTuple = (firstValue: "Hello", secondValue: 10)

// Dictionries

var myDict: [String: Any] = ["name": "Mohamed", "age": 20]

myDict["name"] = "Keshawy"

myDict["age"] = 30

myDict.removeValue(forKey: "age")

// Sets

var mySet: Set<Int> = [1, 2, 3, 4, 5]

mySet.insert(6)

mySet.remove(1)

mySet.count

var set1: Set<Int> = [1, 2, 3, 4]
var set2: Set<Int> = [3, 4, 5, 6]

let setUnion: Set<Int> = set1.union(set2)
let setIntersection: Set<Int> = set1.intersection(set2)
let setDifference: Set<Int> = set1.subtracting(set2)

/* ------ Conditional Statments ------ */

let number = 8
var message: String
if number % 2 == 0 {
    message = "\(number) is an even Number"
} else {
    message = "\(number) is an odd Number"
}

let grade = 87
var statmentMessage: String
if grade >= 90 {
    statmentMessage = "Excellent"
} else if grade >= 80 {
    statmentMessage = "Very Good"
} else if grade >= 70 {
    statmentMessage = "Good"
} else {
    statmentMessage = "You failed"
}

// Switch case

let allGrade: Int = 60
var switchMessage: String

switch allGrade {
case 90...100:
    switchMessage = "Excellent"
case 80..<90:
    switchMessage = "Very Good"
case 70..<80:
    switchMessage = "Good"
default:
    switchMessage = "You failed"
}

//Ternary operator

let ternaryOperator: Int = 91

let result: String = ternaryOperator >= 90 ? "Excellent" : "You failed"

/* -------- Loops --------- */

// For loop

var forMessage: String
for index in 1...5 {
    forMessage = "Index is : \(index)"
}

let person = ["name": "Keshawy", "age": "38", "city": "Cairo"]

var dicMessage: String
for (key, value) in person {
    dicMessage = key + " : " + value
}

// While loop

var count: Int = 0
var whileMessage: String
while count < 5 {
    whileMessage = "Count is : \(count)"
    count += 1
    if count == 2 {
        break
    }
}

// Rpeat while

var repeatCounter: Int = 0

result: repeat {
    repeatCounter += 1
} while repeatCounter < 10

//Continue
for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
}

for outerIndex in 1...5 {

    for innerIndex in 1...3 {

    }
}

let grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

for row in grid {

    for element in row {

    }
}

/* ----- Functions ---- */

// Buitl in function

let numberTwo = 43

let pi = 3.1415

let stringValue = "    Hello World    "

// sin cos tan

let resultSin = sin(pi / 2)

let rondedValue = round(10.3)

let upperCaseString = stringValue.uppercased()

let lowerCase = stringValue.lowercased()

let removeSpace = stringValue.trimmingCharacters(in: .whitespaces)

// Return Types
func getString() -> String {
    return "Hello World"
}

getString()

// Parameters
func grretString(name: String) -> String {
    return name
}

grretString(name: "Mohamed")

// Void Function
func increementCount() {
    var countNum = 0
    countNum += 1
}

increementCount()

// Mutli Return Type

func multiReturnType(name: String, age: Int) -> (name: String, age: Int) {

    return (name, age)
}

multiReturnType(name: "Keshawy", age: 38)

// External Parameter naming

func getName(externalName name: String) -> String {
    return "Hello \(name)"
}

getName(externalName: "Mohamed")

// Omitting external parameter name

func omittingExternalParameter(_ a: Int, _ b: Int) -> Int {
    return a + b
}

omittingExternalParameter(10, 20)

// Default paramter value

func getNameByDefaultValue(name: String = "Keshawy") -> String {
    return name
}

getNameByDefaultValue()

// Function type

let mathOperation: (Int, Int) -> Int

func addition(_ a: Int, _ b: Int) -> Int {
    return a + b
}

mathOperation = addition

let addtionResult = mathOperation(10, 40)

// Variadic Parameters

func sum(numbers: Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}

let resultOfSum = sum(numbers: 1, 2, 3, 4)

// inout parameter

func swapVlaues(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var fristNumber = 10
var secondNumber = 30

swapVlaues(&fristNumber, &secondNumber)

// Recursion Function

func factorial(_ num: Int) -> Int {
    if num == 0 {
        return 1
    } else {
        return num * factorial(num - 1)
    }
}

/* ----------- Optionals ------------ */

var optionalExample: Int? = nil

var optionlString: String?

// Optional binding

// if let

// Unwrapped single optional

var optionalBinding: String? = "Optional Binding"

if let unwrappedOtionalBinding = optionalBinding {
    //print("Unwrapped: \(unwrappedOtionalBinding)")
} else {
    print("Optional Binding not found")
}

// Unwrapped Multi optiona
var fristName: String? = "Mohame"
var lastName: String? = "Keshawy"

if let unwrappedFristName = fristName, let unwrappedLastName = lastName {
    /* print("Full name: \(unwrappedFristName) \(unwrappedLastName)") */
} else {
    print("No full name found")
}

// Guard let - erly return

func getName(_ userNmae: String?) {
    guard let validName = userNmae else {
        return
    }
    // if username not nil handle logic here
    //print("Welcom \(validName)")
}

getName("Mohamed")

// Implicitly Unwrapped Optionals

var implicitlyUnwrappedString: String! = "Implicitly Unwrapped String"

//print(implicitlyUnwrappedString!)

/* ------ Type Alias ------- */

typealias Age = Int

var myAge: Age = 30

/* ------- Clousre -------- */

// Syntax

let sayHello: () -> Void = {
    //print("Hello World")
}

sayHello()

let closure = { (_ a: String) -> String in
    return a
}

closure("Hello")

// Sorted Method

let numbers = [9, 2, 1, 3, 4, 7, 6, 8]

let sortedNumbers = numbers.sorted(by: { (a: Int, b: Int) in

    return a < b
})

// Inferring Type from context

let sortedNumbersWithInferringType = numbers.sorted(by: { a, b in
    return a < b
})

// Implicit returns from Single-Expression Closure

let sortedNumbersWithImplicitReturn = numbers.sorted(by: { a, b in a < b
})

// Operation Method - too short

let sortedNumbersWithOperationMethod = numbers.sorted(by: <)

// Shorthanded Arguments

let sortedNumberWithShortedHanded = numbers.sorted(by: { $0 < $1 })

// Trailing Closures

let sortedNumberWithTrailingClosures = numbers.sorted { $0 < $1 }

// Higher Order Function

func funcWithClosure(_ a: Int, _ b: Int, closure: (Int, Int) -> Int) -> Int {
    return closure(a, b)
}

let WithClosureResult = funcWithClosure(10, 20) { a, b in
    return a + b
}

// Map

let testMap = ["a", "b", "c", "d"]

testMap.map { (element) -> String? in return element.uppercased() }

let newMap = testMap.map { element in return element.uppercased() }

// Compat Map

let compatMapCollection = ["1", "2", "3", "Mohamed", "Keshawy", "4", "5", nil]

let compatMap = compatMapCollection.compactMap { (element) -> String? in
    return element?.uppercased()
}

// Flat Map

let flatMapCollection: [[Int]] = [[1, 2], [3, 4], [5, 6]]

let flatMapResult: [Int] = flatMapCollection.flatMap { (element) -> [Int] in
    return element
}

// Filter

let filterCollection: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]

let filterResult: [Int] = filterCollection.filter { (element) -> Bool in
    return element % 2 == 0
}

// Reduce

let reduceCollection: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]

let reduceResult: Int = reduceCollection.reduce(0) {
    result,
    element in
    return result + element
}

// ForEach Loop

let forEachLoopCollection: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]

forEachLoopCollection.forEach { element in

}

// Split

let splitString: String = "Hello  World This is a test"

let splitArray: [Substring] = splitString.split(
    separator: " ",
    maxSplits: 3,
    omittingEmptySubsequences: false
)

// Contains

let containsString: String = "Hello  World This is a test"

containsString.contains("Hello")

// Enums

enum Color {
    case red
    case green
    case blue
}

let color: Color = .red

switch color {
case .red:
    print("Red")
case .green:
    print("Green")
case .blue:
    print("Blue")
}

// Associated Values

enum Shape {
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    case circle(radius: Double)
}

let shape: Shape = .square(side: 10)

switch shape {
case .square(let side):
    print("Square side is \(side)")
case .rectangle(let width, let height):
    print("Rectangle width is \(width) and height is \(height)")
case .circle(let radius):
    print("Circle radius is \(radius)")
}

// Raw value

enum ColorRawValue: String {
    case RED = "red"
    case GREEN = "green"
    case BLUE = "blue"
}

let colorRawValue: ColorRawValue = ColorRawValue.BLUE

// Raw value inferance

enum Planet: String {
    case mercury = "Mercury"
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
}

// Methods in Enums

enum Gander {
    case MALE
    case FEMALE

    func changeGender() -> String {
        switch self {
        case .MALE:
            return "Male"
        case .FEMALE:
            return "Female"
        }
    }
}

let gander = Gander.FEMALE.changeGender()



/* ------ Object Oriented Programming ------ */


// Class and Object

// Class are referance type

class Book {
    
   private var title : String? = nil
    var author : String
    var page : Int
    
    init( author: String, page: Int) {
       
        self.author = author
        self.page = page
    }
    
    func setTitle(title : String){
        self.title = title
    }
    
    func getTitle() -> String?  {
        return self.title
    }
}


let fristBook = Book(author: "Mohamed", page: 100)

let secondBook = fristBook


fristBook.setTitle(title: "First Book")

secondBook.setTitle(title: "Second book")



// Structs

// Struct are value type

// Struct dose not  support inheritance
struct Persson {
    
    var name : String
    var age : Int
    
}

let persson1 = Persson(name: "Mohamed", age: 20)

var persson2 = persson1

persson2.name = "Keshawy"

