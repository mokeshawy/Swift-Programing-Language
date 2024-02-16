import UIKit

/* Variables */

//When using the "var keyword" can be reassigned the value once again

// Initialization
var fristName = "Moahmed" , lastname = "Keshawy"


var middelName : String = "Eid"
middelName = "Mohamed"

// Declaration
var homeName : String , homeState : String
homeName = "My Home"



/* Constants */

// When using the "let keyword" cannot be assigned the value once again
let name = "Keshawy"
let myNme : String = "Mohamed"
let fristTime : String , lastTime : String
 
fristTime = "10:00 AM"
lastTime = "3:00 PM"


/* Arrays */

// array is data structure array cane be save mulitaples values from memory from one type and can be accessed to the element by "index" and first element from array start from index "0"

// cane be add new element after initialize array by "append"

// can be remove element from array by "remove(index)"

var arr = ["A","B","C"]
arr.append("D")
arr.remove(at: 0)
print(arr[0])
