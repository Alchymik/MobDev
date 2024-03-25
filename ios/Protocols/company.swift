protocol Coding {
    var time: Int { get set }
    var linesOfCode: Int { get set }
    func writeCode(platform: Platform, numberOfSpecialists: Int)
}

protocol Testing {
    func stopCoding()
}

enum Platform {
    case iOS
    case Android
    case Web
}

class Company: Coding, Testing {
    var numberOfProgrammers: Int
    var specializations: [String]

    init(numberOfProgrammers: Int, specializations: [String]) {
        self.numberOfProgrammers = numberOfProgrammers
        self.specializations = specializations
    }

    var time: Int = 0
    var linesOfCode: Int = 0

    func writeCode(platform: Platform, numberOfSpecialists: Int) {
        print("Разработка началась. Пишем код для \(platform)")

        self.time += 1 
        self.linesOfCode += 100

        print("Работа закончена. Переход к тестированию")
    }

    func stopCoding() {
        if self.time > 5 {
            print("Превышено время разработки!")
        } else {
            print("Остановка разработки выполнена.")
        }
    }
}

let company = Company(numberOfProgrammers: 10, specializations: ["iOS", "Android", "Web"])
company.writeCode(platform: .iOS, numberOfSpecialists: 5)
company.stopCoding()
