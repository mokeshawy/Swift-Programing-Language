


/* --------------- Function -------------------*/


// function
func printWelcomeMessage(){
    print("Welcome to IOS development...")
}
    
printWelcomeMessage()

// function with parameter
func printMessage(message : String){
    print(message)
}

printMessage(message: "Hello World")


// function with label
func printNewMessage(requestMessage message : String){
    print(message)
}


printNewMessage(requestMessage: "Hello again")


// return function
func getNumber(num1 : Int, num2 : Int) -> Int{
    return num1 + num2
}

let result = getNumber(num1: 3, num2: 5)
print("num1 + num2 = \(result)")


// function with default value
func getWarningMessage(message : String = "Warning"){
    print(message)
}

getWarningMessage()

getWarningMessage(message: "It's not allowed")


// function with optional parameters

func sub(num1 : Int? , num2 : Int) -> Int{
    return (num1 ?? 30) - num2
}

let subResult = sub(num1: nil, num2: 20)
print("subResult = \(subResult)")



// function with return tow values
func getMainMax(numbers: [Int]) -> (min:Int,max:Int){
    var minNum = numbers[0]
    var maxNum = numbers[0]
    for num in numbers{
        if num < minNum{
            minNum = num
        }else if num > maxNum{
            maxNum = num
        }
    }
    return (minNum , maxNum)
}

var numbers = [3,6,7,8,9,10,15]
print(getMainMax(numbers: numbers))




// function wit "call by value" & "call by reference"

/* ----------- call by value ----------- */
func getPriceWitTax(price: Double) -> Double{
    // price = price + (price * 0.05) // cannot be change the parameter because price "call by value" is not allocate reference in the memory
    return price + (price * 0.05)
}

var price = 100.0
print("Price with tax \(getPriceWitTax(price: price)) call by value")


/* ---------- call by reference -------------- */
func getPriceWitTax(price: inout Double) -> Double{
    price = price + (price * 0.05)
    return price
}

print("Price with tax \(getPriceWitTax(price: &price)) call by reference")





// nested function
func operation(num1 : Int , num2: Int) -> (sum:Int, sub:Int){
    func getSum() -> Int{
        return num1+num2
    }
    func getSub() -> Int{
        return num1-num2
    }
    return (getSum(),getSub())
}


print("Sum operation \( operation(num1: 30, num2: 40).sum)")
print("Sub operation \( operation(num1: 30, num2: 20).sub)")





// Recognition function
func getFactorial(num : Int) -> Int{
    if(num == 1){
        return 1
    }else{
        return num * getFactorial(num: num - 1)
    }
}

print("Factorial \(getFactorial(num: 5))")


/* -------------- Overloading -------------- */

// Overloading "Polymorphism in compile time concept"
// The overloading is concept allows you to write more than "Function" with same name but the parameter is Different in the "parameter quantity" or the "data type" or the "return type"

func getNumber(num1:Double , num2 :Double) -> (num1:Double , num2 :Double){
    return (num1, num2)
}

func getNumber( num :Double) -> Double{
    return num
}

func getNumber() -> Int{
    return 20
}


