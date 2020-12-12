// TODO: Create the LinearLightsOutGame class

class LinearLightsOutGame: CustomStringConvertible {
    var lightStates: [Bool], moves: Int, finished: Bool
    
    init(numLights: Int) {
        self.finished = false
        self.moves = 0
        self.lightStates = [Bool](repeating: false, count: numLights)
        initialize()
    }
    
    func initialize() { // For initialization, press the board at random places for 10-50 times, without updating moves
        repeat {
            for _ in 10..<Int.random(in: 10..<50) {
                pressedLightAtIndex(Int.random(in: 0..<self.lightStates.count), isInitialization: true)
            }
        } while checkAllOut()
    }
    
    func getLightString() -> String {
        var lstr = ""
        for i in 0..<self.lightStates.count { lstr += self.lightStates[i] ? "1" : "0" }
        return lstr
    }
    
    func checkAllOut() -> Bool {
        var finalBool = true
        for b in self.lightStates { finalBool = finalBool && !(b) }
        return finalBool
    }
    
    func pressedLightAtIndex(_ index: Int, isInitialization: Bool = false) -> Bool {
        if !isInitialization && self.finished {return true}
        self.moves += isInitialization ? 0 : 1
        self.lightStates[index] = !self.lightStates[index]
        if index - 1 >= 0 {
            self.lightStates[index - 1] = !self.lightStates[index - 1]
        }
        if index + 1 <= self.lightStates.count - 1 {
            self.lightStates[index + 1] = !self.lightStates[index + 1]
        }
        self.finished = isInitialization ? false : checkAllOut()
        return self.finished
    }
    
    var description: String {
        "Lights: \(getLightString()) Moves: \(self.moves)"
    }
}

/* ----------------- Official Playground testing ----------------- */
var lg = LinearLightsOutGame(numLights: 13)
lg.lightStates = [Bool](repeating: true, count: 13)
lg.pressedLightAtIndex(0)
lg
lg.pressedLightAtIndex(3)
lg
lg.pressedLightAtIndex(6)
lg
lg.pressedLightAtIndex(9)
lg
lg.pressedLightAtIndex(12)
lg
lg.pressedLightAtIndex(1)
lg


var lg2 = LinearLightsOutGame(numLights: 13)
lg2.lightStates = [true, true, false, false, false, false, false, false, false, false, true, true, true]
lg2.pressedLightAtIndex(0)
lg2
lg2.pressedLightAtIndex(11)
lg2
lg2.pressedLightAtIndex(6)
lg2
