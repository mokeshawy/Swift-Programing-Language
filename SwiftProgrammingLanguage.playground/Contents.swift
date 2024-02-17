import UIKit

/* ------------------Variables ------------------- */

//When using the "var keyword" can be reassigned the value once again

// Initialization
var fristName = "Mohamed" , lastname = "Keshawy"


var middelName : String = "Eid"
middelName = "Ahmed"

// Declaration
var homeName : String , homeState : String
homeName = "My Home"



/* ---------------- Constants ------------------ */

// When using the "let keyword" cannot be assigned the value once again
let name = "Keshawy"
let myNme : String = "Mohamed"
let fristTime : String , lastTime : String
 
fristTime = "10:00 AM"
lastTime = "3:00 PM"


/* ----------------- Arrays ------------------- */

// array is data structure array cane be save multiples values from memory from one type and can be accessed to the element by "index" and first element from array start from index "0"

// cane be add new element after initialize array by "append"

// can be remove element from array by "remove(index)"

var arr = ["A","B","C"]
arr.append("D")
arr.remove(at: 0)
var firstElement = arr[0]


var arrayOfString = [String]() // empty array

arrayOfString = ["E","F","G","O"] // initialize empty array
arrayOfString += ["P","Q","R","S"] // add multiple values into array with out using append

arrayOfString.insert("U", at: 0) // add new value with specific index

arrayOfString[0] = "T" // replace value of index "0"


arrayOfString.remove(at: 3) // remove value from array with specific

var arrayCount = arr.count // get count of array


/* ---------------- Dictionaries --------------*/

// Dictionaries is a data structure we can store data with "Key and value". But the dictionary does not care about the order of values

// The key in dictionary unique

var countries : [String : String] = ["EG": "Egypt","KSA":"Saudi Arabia","IRQ" : "Bagdad"]

var emptyDictionary : [String : Int]
emptyDictionary = ["one" : 1,  "two" : 2]

var dictionaryAnyValues : [String : Any]
dictionaryAnyValues = ["EGP" : "Egypt", "code" : 123 , "Address" : "Africa"]

let Egypt = dictionaryAnyValues["EGP"] ?? ""

// update on dictionary with "updateValue"
dictionaryAnyValues.updateValue("Cairo", forKey: "EGP")
// update on dictionary with "without updateValue"
dictionaryAnyValues["EGP"] = "Naser City"

// remove values in dictionary
dictionaryAnyValues.removeValue(forKey: "EGP")


// Dictionary count
let dictionaryCount = dictionaryAnyValues.count

print("Dictionary count = \(dictionaryCount)")


/* ------------------- Math Operators --------------*/

var x = 5
var y = 3
var z = x + y

var a = 10 , b = 3 ,  c = 5

print("a + b = \(a + b)") // addition

print("a - b = \(a - b)") // subtraction

print("a * b = \(a * b)") // multiply

print("a / b = \(Double(a) / Double(b))") // division

print("a % b = \(a % b)") // module

print(a + b * c) // Priority for multiplication and division operations "a * c" and addition into "a"

print( (a + b) * c) // Priority order of operation ( a + b) and multiply into "c"

print(a + b / c) // Priority for multiplication and division operations "a / c" and division into "a"

print( (a + b) / c) // Priority order of operation ( a / b) and division into "c"


// assignment operator

a += 4
a -= 3
a *= 5
a /= 9
a %= 3








