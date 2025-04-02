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

let numInt8 : Int8 = 127  // value: -128 to 127 size: 1byte

let numUInt8 : UInt8 = 255 //  value: 0 to 255 size: 1byte

let numInt16 : Int16 = 32767 // value: -32768 to 32767 size: 2bytes

let numUInt16 : UInt16 = 65535 // value: 0 to 65535 size: 2bytes

let numInt32 : Int32 = 2147483647 // value: -2147483648 to 2147483647 size: 4bytes
 
let numUInt32 : UInt32 = 4294967295 // value: 0 to 4294967295 size: 4bytes

let numIn64 : Int64 = 9223372036854775807 // value: -9223372036854775808 to 9223372036854775807 size: 8bytes

let numUIn64 : UInt64 = 18446744073709551615 // value: 0 to 18446744073709551615 8bytes


/* Float and Double */

let floatNum : Float = 3.14 // value after decimal point to 6 digit , size 4 bytes

let doubleNum : Double = 3.14159265358979323846 // value after decimal point to 15 decimal digit, size 8 bytes



/* Boolean */

let isMale : Bool = true // value: true or false, size: 1 byte


/* Character */

let myChar : Character = "A" // value: 1 char in double coute, size: 1 byte


/* String */

let myString : String = "Hello World" // value: from 2 char in double coute, size: NON

let counactenateString : String = "Hello" + " " + "World"



/* ------- Type Inference Vs Type Annotation ------- */

// Type Annotation

let annotateType : String = "Hello World"


// Type Inference

let inferType = "Hello World"



/* ------ Collection Data Types ------ */


// Arrays

var testArray : [Int] = [1,2,3,4,5]

// chnage value of element by index
testArray[0] = 9

// add new element
testArray.append(18)


//Tuples

let myTuple = (firstValue: "Hello", secondValue: 10)

print(myTuple.firstValue)

// Dictionries

var myDict : [String : Any] = ["name" : "Mohamed", "age" : 20]

myDict["name"] = "Keshawy"

myDict["age"] = 30

myDict.removeValue(forKey: "age")


// Sets

var mySet : Set<Int> = [1,2,3,4,5]

mySet.insert(6)

mySet.remove(1)

mySet.count

var set1 : Set<Int> = [1,2,3,4]
var set2 : Set<Int> = [3,4,5,6]

let setUnion : Set<Int> = set1.union(set2)
let setIntersection : Set<Int> = set1.intersection(set2)
let setDifference : Set<Int> = set1.subtracting(set2)

