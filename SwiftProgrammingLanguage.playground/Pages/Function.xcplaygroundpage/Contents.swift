


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
