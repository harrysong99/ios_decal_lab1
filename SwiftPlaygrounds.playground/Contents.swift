/*
 
 Partner 1 Name + Email:
 Partner 2 Name + Email:
 
*/

import Foundation 
/*:
 # Lab 1: Swift Playgrounds
 
 Please refer to the [lab spec](https://iosdev.berkeley.edu/fa19/lab/lab1/) for further instructions.
 
 ### Problem 1: Swift Warmup
*/
// Implement the following functions:

func tossCoin() -> String {
    // YOUR CODE HERE
    let integer = arc4random()
    if integer % 2 == 0{
        return "Heads"
    } else {
        return "Tails"
    }
}

func simulateTosses(numTosses n: Int) -> Int {
    // YOUR CODE HERE
    var num_heads = 0
    for num in 1...n {
        let toss = tossCoin()
        if toss == "Heads" {
            num_heads += 1
        }
    }
    return num_heads
}

// Uncomment the following lines to run sanity check tests:

tossCoin()  // Should return either "Heads" or "Tails"
simulateTosses(numTosses: 50)   // Should return a number close to 25

/*:
 ### Problem 2: Digits
 */
//Implement the `digits` function:

// YOUR CODE HERE
func digits(_ x: Int) -> [Int] {
    var list = [Int]()
    var num = x
    var remainder = 0
    repeat {
        num = num / 10
        remainder = num % 10
        list.insert(remainder, at: 0)
    } while num > 0;
    return list
}

// Uncomment the following lines to run sanity check tests:

 digits(123)  // returns [1, 2, 3]
 digits(0)    // returns [0]

/*:
 ### Problem 3: Number Frequency
*/
// Implement the `frequency` function:

// YOUR CODE HERE
func frequency(ofNumbers ns: [Int]) -> String {
//    var ns = ns
//    ns.sort()
    let map = ns.map{($0, 1)}
    let counts = Dictionary(map, uniquingKeysWith: +)
    return "\(counts)"
}

// Uncomment the following lines to run sanity check tests:

frequency(ofNumbers: [3, 1, 2, 3, 2, 1, 2, 3, 2])  // returns "1:2, 2:4, 3:3"
frequency(ofNumbers: [1, 2]) // returns "1:1, 2:1"
frequency(ofNumbers: []) // returns ""

/*:
 ### Problem 4 (Optional): Roman Numerals to Integer
 */
// Implement the `romanToInt` function:

// YOUR CODE HERE

// Uncomment the following lines to run sanity check tests:
/*
 romanToInt("III")      // returns 3
 romanToInt("LVIII")    // returns 58
 romanToInt("MCMXCIV")  // returns 1994
 */



