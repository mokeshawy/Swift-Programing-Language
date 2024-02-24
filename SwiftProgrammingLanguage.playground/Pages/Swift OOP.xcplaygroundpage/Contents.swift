


/* ---------- Object Oriented Programming --------- */


// Class =>  Attributes and Actions

// Object => Copy Attributes and Actions with specific this  Attributes and Actions


/* ---------- Class & Object ------------ */

class Car {
    var name : String
    var color : String?
    var model : Int?
    
    
    
    init(name: String, color: String, model: Int) { // this is constructor
        self.name = name
        self.color = color
        self.model = model
    }
    
    init(name: String) { // this is constructor
        self.name = name
    }
    
    func move(){
        print("the car is moving...")
    }
}

let BMWs = Car(name: "BMW", color: "White", model: 2020)
let Toyota = Car(name: "Toyota", color: "Black", model: 2020)
let Nesin = Car(name: "Nesin")



class Expert {
    var name : String
    var bio : String
    var likes : Int
    
    init(name: String, bio: String, likes: Int) {
        self.name = name
        self.bio = bio
        self.likes = likes
    }
    
    func addNewLike(){
        likes += 1
    }
}

var expert1 = Expert(name: "Mohamed Keshawy", bio: "IOS Developer", likes: 1)

var expert2 = Expert(name: "Eslam Mohamed", bio: "Android Developer", likes: 0)

print(expert1.name)
expert1.addNewLike()
print(expert1.likes)


print(expert2.name)
for _ in 1...4 {
    expert2.addNewLike()
}
print(expert2.likes)



/* --------------- Inheritance --------------- */

class Developer : Expert {
    
    var arrProgLanguage : [String]
    
    init(name: String, bio: String, likes: Int,arrProgLanguage : [String]) {
        self.arrProgLanguage = arrProgLanguage
        super.init(name: name, bio: bio, likes: likes)
    }
    
    
}

var androidProgrammingLanguage = ["Kotlin","JAVA","Dart"]
var androidDeveloper = Developer(name: "Mohamed Keshawy", bio: "Android Developer", likes: 2,arrProgLanguage: androidProgrammingLanguage)

print(androidDeveloper.name)
print(androidDeveloper.bio)
print(androidDeveloper.likes)
print(androidDeveloper.arrProgLanguage)




var iosProgrammingLanguage = ["Objective-C","Swift","Dart"]
var iosDeveloper = Developer(name: "Mohamed Keshawy", bio: "IOS Developer", likes: 82,arrProgLanguage: iosProgrammingLanguage)

print(iosDeveloper.name)
print(iosDeveloper.bio)
print(iosDeveloper.likes)
print(iosDeveloper.arrProgLanguage)




/* ----------- Polymorphisme ----------  */

// Override is a implement polymorphism concept in the Run-Time

class Animal {
    
    var name : String
    
    init(name: String) {
        self.name = name
    }
    
    func getName() -> String {
        return "This Parent Animals \(name))"
    }
}

class Cat : Animal{
    
    override func getName() -> String {
        super.getName()
        return "Cat name: \(name)"
    }
    
}

class Dog : Animal{
    
    override func getName() -> String {
        return "Dog name: \(name)"
    }
}


var jessy = Cat(name: "Jessy")
//print(jessy.getName())

var max = Dog(name: "Max")
//print(max.getName())


var animal : [Animal] = [jessy,max]

for animal in animal{
    if let jessy = animal as? Cat{
        print(jessy.getName())
    }else if let max = animal as? Dog{
        print(max.getName())
    }
}


/* ---------- Access Control -------- */

// private => access class or property or method in the class scope only

// fileprivate  => access class or property or method from file scope only

/* internal => this control is the default,
 access class or property or method from module scope only */


// public => access class or property or method from any module


// open => can be any class extend from class using open control



/* --------------- Protocol -------------------*/

// A "Protocol" represents abstract concept in OOP

// The "Protocol" in Swift  is as interface in java

protocol TableView {
    func numberOfRows() -> Int
    func showItemAtIndex(index : Int)
}

class Followers : TableView{
    
    var arrUser = ["Mohamed","Anas","Omer"]
    func numberOfRows() -> Int {
        return arrUser.count
    }
    
    func showItemAtIndex(index: Int) {
        print("Index \(index) , item = \(arrUser[index])")
    }
    
}

var user1 = Followers()
user1.numberOfRows()
user1.showItemAtIndex(index: 0)



/* -------------------- Structures -------------------- */

// struct has attributes & method

/* ---------- class:-
 
 - init block require "init as constructer"
 
 - using pass by reference when copy the class into new variable
 
 - can be inherit from other class
 
 
 */


/* --------- struct:-
 
 - init block not require in struct "init as constructer"
 
 - cannot be changed any property from method without using "mutating" keyword
 
 - using pass by value when copy the class into new variable
 
 - struct cannot be inherit
 
 */


struct Post{
    var title : String
    var body : String
    var likes : Int
    var views : Int
    
    
    mutating func addLike() {
        likes += 1
    }
}

var post = Post(title: "Hello World", body: "This is IOS Development..", likes: 20, views: 4)

var post2 = post //=> pass by value
post.title = "Hello post2"
print(post2.title) // print "Hello World" not "Hello post2"


class MyPost{
    var like : Int = 0
}

var mPost = MyPost()
mPost.like
var anotherPost = mPost //=> pass by reference
mPost.like = 10
anotherPost.like



