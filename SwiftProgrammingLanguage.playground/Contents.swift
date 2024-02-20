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



/* ------------ Comparison Operators -------------- */
    /* ....... < , > , <= , >= , == , != ........*/

var e = 5 , f = 10

var  g = e < f // " < " less than

g = e > f // " > " more than

g = e <= f // " <= " less than or equal

g = e >= f // " >= " more than or equal

g = e == f // " == " equal equal

g = e != f // " ! " not equal



/* ------------ Logical Operators -----------------*/
    /* .... and and -> && , or -> ||  not -> ! ...*/

// Logical " and && " 
e == 4 && f != 11 // false && true = false

e != 5 && f != 10 // false && false = false

e == 5 && f != 10 // true && false = false

e == 5 && f == 10 // true && true = true

// Logical " or || " operator
e == 4 || f == 11 // false || false  = false

e != 5 || f == 10 // false || true = true

e == 5 || f != 10 // true || false = true

e == 5 || f == 10 // true || true = true


// Logical "not !" operator
var h = false , i = true
!h && i // true

h && !i // false

!h || !i // true


/* -------- if Statement --------- */

var isTrue = true , isFalse = false

if isTrue {
    print(isTrue)
}else{
    print(!isTrue)
}

if isFalse {
    print(isTrue)
}else if isTrue{
    print(!isTrue)
}else{
    print(isTrue)
}


/* --------- Switch Statement ---------- */

var score = 10
switch score{
case 0,1: // 0,1 ( , ) -> or operator
    print("very bad")
case 1..<5: // 1..5 ( .. )-> it range operator
    print("bad")
case 4..<8:
    print("good")
default:
    print("excellent")
}

/* ---------- Optionals varibles in swift -------- */

var userName : String? // the userName is a optional string because it may have value or not
userName = "Mohamed Keshawy"
if userName == nil{
    print("Please enter your name!")
}else{
    print("Welcome \(userName ?? "")")
}

// how to check the "userName" has "value" or "nil"

userName ?? "Mohamed" // first one assign the default value on the userName

userName! // using the "Exclamation mark" when you are sure the "userName" has value. When the user name not have value the app will be crash.

if let name = userName{
    print("\(name)")
} //  using "if let" when you need go to the action when the "userName" has value
















