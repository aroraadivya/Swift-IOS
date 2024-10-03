/*:
## App Exercise - Workout Types

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.

 You fitness tracking app may allow users to track different kinds of workouts. When architecting the app, you may decide to have a `Workout` base class from which other types of workout classes inherit. Below are three classes. `Workout` is the base class with `time` and `distance` properties, and `Run` and `Swim` are subclasses that add more specific properties to the `Workout` class.

 Also provided is a `workouts` array that represents a log of past workouts. You'll use these classes and the array for the exercises below.
 */
import Foundation

// Base class Workout
class Workout {
    var time: Double // Time in seconds
    var distance: Double // Distance in meters
    
    init(time: Double, distance: Double) {
        self.time = time
        self.distance = distance
    }
    
    func description() -> String {
        return "Time: \(time) seconds, Distance: \(distance) meters"
    }
}

// Subclass Run
class Run: Workout {
    var cadence: Double // Cadence in steps per minute
    
    init(time: Double, distance: Double, cadence: Double) {
        self.cadence = cadence
        super.init(time: time, distance: distance)
    }
    
    override func description() -> String {
        return super.description() + ", Cadence: \(cadence) steps per minute"
    }
}

// Subclass Swim
class Swim: Workout {
    var strokes: Int // Number of strokes
    
    init(time: Double, distance: Double, strokes: Int) {
        self.strokes = strokes
        super.init(time: time, distance: distance)
    }
    
    override func description() -> String {
        return super.description() + ", Strokes: \(strokes)"
    }
}


//:  Write simple functions called `describeRun(runningWorkout:)` and `describeSwim(swimmingWorkout:)` that take a `Run` object and a `Swim` object, respectively. Neither should return values. Each function should print a description of the workout, including the run's cadence or the swim's stroke. Time is represented in seconds, distance is represented in meters, and cadence is represented in steps per minute.

func describeRun(runningWorkout: Run) {
    print("Run Workout:")
    print("Time: \(runningWorkout.time) seconds")
    print("Distance: \(runningWorkout.distance) meters")
    print("Cadence: \(runningWorkout.cadence) steps per minute")
}


func describeSwim(swimmingWorkout: Swim) {
    print("Swim Workout:")
    print("Time: \(swimmingWorkout.time) seconds")
    print("Distance: \(swimmingWorkout.distance) meters")
    print("Strokes: \(swimmingWorkout.strokes)")
}


let runWorkout = Run(time: 1800, distance: 5000, cadence: 160)
let swimWorkout = Swim(time: 2700, distance: 1500, strokes: 2000)

describeRun(runningWorkout: runWorkout)
describeSwim(swimmingWorkout: swimWorkout)


//:  Now loop through each workout in `workouts` and, using type casting, call either `describeRun(runningWorkout:)` or `describeSwim(swimmingWorkout:)` on each. Observe what is printed to the console.

let workouts: [Workout] = [
    Run(time: 1800, distance: 5000, cadence: 160),
    Swim(time: 2700, distance: 1500, strokes: 2000),
    Run(time: 3600, distance: 8000, cadence: 155),
    Swim(time: 1800, distance: 1000, strokes: 1200)
]


for workout in workouts {
    if let runWorkout = workout as? Run {
        describeRun(runningWorkout: runWorkout)
    } else if let swimWorkout = workout as? Swim {
        describeSwim(swimmingWorkout: swimWorkout)
    }
}

/*:
 _Copyright © 2023 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 2 of 2
 */
