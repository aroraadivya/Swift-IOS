/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */

let mixedCollection: [Any] = [50, 42, "Hello, world", true, 7.23, 35.5, "Swift", false]
print(mixedCollection)



//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
// Loop through the collection and handle each type
for item in mixedCollection {
    if let integer = item as? Int {
        print("The integer has a value of \(integer).")
    } else if let double = item as? Double {
        print("The double has a value of \(double).")
    } else if let string = item as? String {
        print("The string has a value of \(string).")
    } else if let boolean = item as? Bool {
        print("The boolean has a value of \(boolean).")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
import Foundation

let mixedDictionary: [String: Any] = [
    "age": 30,
    "temperature": 98.6,
    "name": "Alice",
    "isEmployed": true,
    "height": 5.7,
    "greeting": "Hello!"
]

for (key, value) in mixedDictionary {
    if let integerValue = value as? Int {
        print("\(key): The integer has a value of \(integerValue)")
    } else if let doubleValue = value as? Double {
        print("\(key): The double has a value of \(doubleValue)")
    } else if let stringValue = value as? String {
        print("\(key): The string is \"\(stringValue)\"")
    } else if let booleanValue = value as? Bool {
        print("\(key): The boolean value is \(booleanValue)")
    } else {
        print("\(key): Unknown type")
    }
}

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.


var total: Double = 0


for value in mixedDictionary.values {
    if let integerValue = value as? Int {
        total += Double(integerValue)
    } else if let doubleValue = value as? Double {
        total += doubleValue
    } else if let _ = value as? String {
        total += 1
    } else if let booleanValue = value as? Bool {
        total += booleanValue ? 2 : -3
    }
}

// Print the final value of total
print("The total is \(total)")


//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.

var total2: Double = 0

for item in mixedCollection {
    if let integerValue = item as? Int {
        total2 += Double(integerValue)
    } else if let doubleValue = item as? Double {
        total2 += doubleValue
    } else if let stringValue = item as? String {
        
        if let numberValue = Double(stringValue) {
            total2 += numberValue
        }
    }
}


print("The total2 is \(total2)")


/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
