// Basic function

func stringRepeater(_ orgString: String, _ repeatCount: Int) -> String {
    var returnString = ""
    for _ in 0..<repeatCount {
        returnString += orgString
    }
    return returnString
}

//stringRepeater(orgString: "Ho!", repeatCount: 3)
//stringRepeater(orgString: "New York ", repeatCount: 2)

stringRepeater("Ho! ", 3)
stringRepeater("New York ", 2)

// Returning a tuple (multiple return values)

func stringLetterRepeater(_ orgString: String, _ repeatCount: Int) -> (String, String) {
    let version1 = stringRepeater(orgString, repeatCount)
    var version2 = ""
    for letter in orgString {
        version2 += String(repeating: letter, count: repeatCount)
    }
    return (version1, version2)
}

var collated : String, uncollated : String
(collated, uncollated) = stringLetterRepeater("Ow! ", 4)
collated
uncollated

// Internal/External names plus Optional parameters

func stringDoubler(_ orgString: String, alternativeMultiple repeatCount: Int = 2) -> String {
    var returnString = ""
    for _ in 0..<repeatCount {
        returnString += orgString
    }
    return returnString
}


stringDoubler("Woof! ", alternativeMultiple: 3)
stringDoubler("Jingle Bells! ")
