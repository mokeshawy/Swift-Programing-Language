

/* --------------- For loop ------------ */
for i in 1...5{
    print("Count \(i)")
}

var  num = 10
for _ in 1...10{
    print("Decrement count \(num)")
    num -= 1
}

for i in stride(from: 0, to: 10, by: 1){ // from 0 to 10 will print 0 to 9 only
    print("Stride count \(i)")
}

for i in stride(from: 0, through: 10, by: 1){ // from 0 through 10 will print 0 to 10 only
    print("Stride through count \(i)")
}

var numbers = [1,5,9,3,7]
for i in 0...numbers.count-1 {
    print("Numbers \(numbers[i])")
}

var numbers2 = [1,2,9,4,8]
for i in 0..<numbers2.count{
    if numbers2[i] % 2 == 0 {
        //print("index = \(i) value =\(numbers2[i])")
    }
}

var numbers3 = [1,5,9,3,7]
for number in numbers3{
    print(number)
}

for (index,value) in numbers3.enumerated(){
    print("key = \(index) value = \(value)")
}


var userDict = ["name":"Keshawy","email":"moKeshawy@gmail.com"]

for item in userDict{
    print("key = \(item.key) value = \(item.value)")
}

for (key,value) in userDict{
    print("key = \(key) value = \(value)")
}


/* ----------- While loop & Repeat While -------------- */


// while loop
var count = 1
while count < 5{
    print("Count \(count)")
    count+=1
}

var count2 = 5
while count2 > 0{
    print("Count \(count2)")
    count2-=1
}


// repeat while such "do while"
var count3 = 1
repeat{
    print(count3)
    count3+=1
}while count3 < 6



/* ---- Nested loop ------ */

for i in 1...5{
    for j in 1...5 {
        print("i \(i) j \(j)")
    }
}


/* --------------- Break & Continue ----------- */


for i in 1...10{
    if i == 6{
        print("i = \(i)")
        break
    }
    print("i = \(i)")
}

for i in 1...10{
    if i == 2{
        print("i = \(i)")
        continue
    }
    print("i \(i)")
}

