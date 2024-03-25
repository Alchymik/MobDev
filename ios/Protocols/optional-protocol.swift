protocol GameProtocol {
    var gameName: String { get }
    var gameDescription: String? { get }  
    
    func startGame()
}


extension GameProtocol {
    var gameDescription: String? {
        return nil
    }
}

class Game: GameProtocol {
    var gameName: String
    
    init(name: String) {
        self.gameName = name
    }
    

    
    func startGame() {
        print("Игра \(gameName) начата!")
    }
}

let game = Game(name: "Шашки")
game.startGame()
