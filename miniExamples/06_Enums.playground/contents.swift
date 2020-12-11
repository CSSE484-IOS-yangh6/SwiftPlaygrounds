// Basic enum
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var today: Weekday
today = .monday

if today == .monday {
    print("It is monday")
}

switch today {
case .monday, .wednesday, .friday:
    print("Swim practice")
case .thursday:
    print("Horse back riding")
default:
    print("Piano practice")
}

// Rawvalues
enum State: Int {
    case ready, set, go
}

var raceState = State.ready
raceState.rawValue
var nextRaceState = State(rawValue: 0)
if nextRaceState?.rawValue == 0 {
    print("Ready")
}

// Associated values and functions

enum HomeworkStatus {
    case noHomework
    case inProgress(Int, Int)
    case done
    
    func simpleDescription() -> String {
        switch self {
        case .noHomework:
            return "No Homework"
        case .inProgress(let workDone, let totalProblems):
            return "You have finished \(workDone) out of \(totalProblems)"
        case .done:
            return "Done"
        }
    }
}

var myHwStatus = HomeworkStatus.inProgress(8, 10)
myHwStatus.simpleDescription()

