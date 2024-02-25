

/* -------------- Enumerations - Enum --------- */

enum Level{
    case ONE
    case TWO
    case THREE
}

enum Gender : String {
    case MALE = "Male"
    case FEMALE = "Female"
}

var userLevel = Level.ONE

struct User{
    var name : String
    var gender : Gender
    var points : Int
    var level : Level
}

var user = User(name: "Mohamed Keshawy",Gender.MALE.rawValue, points: 4, level: Level.ONE)

user.level


func getSeconds(level : Level) -> Int {
    switch level {
    case .ONE:
        return 12
    case .TWO:
        return 8
    case .THREE:
        return 5
    }
}

getSeconds(level: user.level)
