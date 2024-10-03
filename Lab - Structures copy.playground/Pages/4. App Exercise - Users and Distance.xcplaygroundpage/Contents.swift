/*:
## App Exercise - Users and Distance
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 For most apps you'll need to have a data structure to hold information about a user. Create a `User` struct that has properties for basic information about a user. At a minimum, it should have properties to represent a user's name, age, height, weight, and activity level. You could do this by having `name` be a `String`, `age` be an `Int`, `height` and `weight` be of type `Double`, and `activityLevel` be an `Int` that will represent a scoring 1-10 of how active they are. Implement this now.
 */
struct User {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var activityLevel: Int

    init(name: String, age: Int, height: Double, weight: Double, activityLevel: Int) {
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.activityLevel = activityLevel
    }
}


//:  Create a variable instance of `User` and call it your name. Use the memberwise initializer to pass in information about yourself. Then print out a description of your `User` instance using the instance's properties.
var Ayush = User(name: "Ayush", age: 22, height: 70.0, weight: 75.0, activityLevel: 8)

print("Name: \(Ayush.name)")
print("Age: \(Ayush.age)")
print("Height: \(Ayush.height) inches")
print("Weight: \(Ayush.weight) kg")
print("Activity Level: \(Ayush.activityLevel) (on a scale of 1 to 10)")

/*:
 In previous app exercises, you've worked with distance in the fitness tracking app example as a simple number. However, distance can be represented using a variety of units of measurement. Create a `Distance` struct that will represent distance in various units of measurement. At a minimum, it should have a `meters` property and a `feet` property. Create a custom initializer corresponding to each property (i.e. if you only have the two properties for meters and feet you will then have two initializers) that will take in a distance in one unit of measurement and assign the correct value to both units of measurements. Hint: *1 meter = 3.28084 feet*.

 - Example: If you use the initializer for meters and pass in a distance of 1600, the initializer should set `meters` to 1600 and `feet` to 5249.344.
 */
struct Distance {
    var meters: Double
    var feet: Double

    init(meters: Double) {
        self.meters = meters
        self.feet = meters * 3.28084
    }

    init(feet: Double) {
        self.feet = feet
        self.meters = feet / 3.28084
    }
}

let distanceInMeters = Distance(meters: 100.0)
let distanceInFeet = Distance(feet: 328.084)

print("Distance in meters: \(distanceInMeters.meters) meters, Distance in feet: \(distanceInMeters.feet) feet")
print("Distance in feet: \(distanceInFeet.feet) feet, Distance in meters: \(distanceInFeet.meters) meters")


//:  Now create an instance of `Distance` called `mile`. Use the initializer for meters to set the distance to 1600. Print out the property for feet and verify that it is equal to 5249.344.
let mile = Distance(meters: 1600)

if(mile.feet==5249.344){
    print("Yes")
}
else {
    print("No")
}


//:  Now create another instance of `Distance` and give it some other distance. Ensure that both properties are set correctly.
let distance = Distance(feet: 500)

print(distance.feet)
print(distance.meters)

/*:
[Previous](@previous)  |  page 4 of 10  |  [Next: Exercise - Methods](@next)
 */
