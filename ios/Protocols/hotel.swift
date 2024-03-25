protocol Hotel {
    init(roomCount: Int)
}

class HotelAlfa: Hotel {
    var roomCount: Int
    
    required init(roomCount: Int) {
        self.roomCount = roomCount
    }
}

let hotelAlfa = HotelAlfa(roomCount: 60)
print("Количество комнат в Hotel Alfa: \(hotelAlfa.roomCount)")