class Person {
    let name: String
    lazy var greeting: () -> String = { [weak self] in
        guard let self = self else { return "Ссылка на self потеряна" }
        return "Привет, меня зовут \(self.name)!"
    }
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) удален из памяти")
    }
}

var person: Person? = Person(name: "Игорь")
print(person?.greeting() ?? "Что-то пошло не так")
person = nil
