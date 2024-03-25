protocol GameDice {
    var numberDice: Int { get }
}

extension Int: GameDice {
    var numberDice: Int {
        print("На кубике выпало \(self)")
        return self
    }
}

let diceCoub = 4
let result = diceCoub.numberDice