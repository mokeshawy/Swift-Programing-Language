


/* ------------- Closures ---------------- */

// get odd and even numbers with out using Closures
func getFilteredNumbers(arrNumbers: [Int]) -> ([Int],[Int]){
    var oddNumbers = [Int]()
    var evenNumbers = [Int]()
    for num in arrNumbers {
        if(num % 2 == 0){
            oddNumbers.append(num)
        }else{
            evenNumbers.append(num)
        }
    }
    return (oddNumbers,evenNumbers)
}

let arryNumbers = [2,4,5,7,8,12,13]

print("odd and even numbers = \(getFilteredNumbers(arrNumbers: arryNumbers))")


// get odd and even numbers using Closures
func getFilteredNumbers(closures: (Int) -> Bool, arrNumbers: [Int]) -> [Int]{
    var arrFilteredNumbers = [Int]()
    for num in arrNumbers{
        if closures(num){
            arrFilteredNumbers.append(num)
        }
    }
    return arrFilteredNumbers
}

let arr = [2,4,5,7,8,12,13]
let oddNumbers = getFilteredNumbers(closures: { (num) -> Bool in getNumbersState(num1:num, num2:0)
    
},arrNumbers: arr )

print("oddNumbers = \(oddNumbers)")

let evenNumbers = getFilteredNumbers(closures: { (num) -> Bool in getNumbersState(num1:num, num2: 1)
    
}, arrNumbers: arr)

print("evenNumbers = \(evenNumbers)")

func getNumbersState(num1: Int,num2:Int) -> Bool{
    return num1 % 2 == num2
}

func getNumberByClosures( numbers : (Int) -> Void ) {
    numbers(8)
}

getNumberByClosures { num in
   print("Numbers = \(num)")
}
  

/* ----- Auto Closures ----- */

func printMessage(message : String, closure: () -> Bool){
    if(!closure()){
        return
    }
    print(message)
}

printMessage(message: "Hello World") {
    false
}

func printMessage(message : String, closure: @autoclosure () -> Bool){
    if(!closure()){
        return
    }
    print(message)
}

printMessage(message: "Hello World", closure: true)




func printSquare(closure: (Int) -> Int , arrNumbers: [Int]){
    for num in arrNumbers{
       print(closure(num))
    }
}

// with parameter name
printSquare(closure: { (num) -> Int in
  return num * num
}, arrNumbers: [1,5,7,8,9])

// with out parameter name
printSquare(closure: { $0 * $0}, arrNumbers: [1,5,7,8,9])




/* ---------- Skiping "@escaping" -------- */

// The scope of a closure is only in the function in which it is defined. To solve this problem we use "@escaping"

var arrClosure : [() -> ()] = []

func printMessage(message: String,closure: () -> ()){
     print("Hello in printMessage \(message)")
    //arrClosure.append(closure) // error
}

func printMessage(closure: @escaping () -> ()){
    arrClosure.append(closure)
}
