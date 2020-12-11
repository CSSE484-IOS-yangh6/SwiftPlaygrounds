var values = [10, 5, 2, 8, 3, 6, 1, 1000]

// Verbose Closure

//func myReducer(runningTotal: Int, currentValue: Int) -> Int {
//    if currentValue > 5 {
//        return runningTotal + 1
//    } else {
//        return runningTotal
//    }
//}

//var numValuesOver5 = values.reduce(0, myReducer)



// Closure parameter name shorthand and trailing closure

//var numValuesOver9 = values.reduce(0) {(runningTotal, currentValue) in
//    currentValue > 9 ? runningTotal + 1 : runningTotal
//}

var numValuesOver9 = values.reduce(0) { $1 > 9 ? $0 + 1 : $0 }

// A Closure using a closure for a variable

let numValuesOverLimit = {(myArray: [Int], limit: Int) -> Int in
    return myArray.reduce(0) {(runningTotal, currentValue) in
        return currentValue > limit ? runningTotal + 1 : runningTotal
    }
}

numValuesOverLimit(values, 5)
numValuesOverLimit(values, 9)


// Comparing func and closure syntax
func asAFunc(_ someString: String, _ someNumber: Int) -> String {
  return String(repeating: someString, count: someNumber)
}
let asAClosure = {(_ someString: String, _ someNumber: Int) -> String in
  return String(repeating: someString, count: someNumber)
}
asAFunc("Holy ", 3)
asAClosure("Holy ", 3)
