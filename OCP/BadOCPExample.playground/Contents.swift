import UIKit

/*
 Программные сущности должны быть открыты для расширения, но закрыты для модификации, т.е новый функционал вводится путем добавления нового кода, а не изменением старого, уже работающего.
 */


//Не исполнение принципу заключается в том, что при добавление нового спортсмена нам нужно менять класс BadSportDepartment, а именно добавлять свойвство, иницилизатор и изменить метод athletesSportTypes()

class BadBoxer {
    func getSportType() -> String {
        return "Boxing"
    }
}

class BadSwimmer{
    func getSportType() -> String {
        return "Swimming"
    }
}

class BadWeightlifter {
    func getSportType() -> String {
        return "Weightlifter"
    }
}

class BadSportDepartment{
    private let boxers: [BadBoxer]
    private let swimmers: [BadSwimmer]
    private let weightlifter: [BadWeightlifter]
    
    init(boxers: [BadBoxer], swimmers: [BadSwimmer], weightlifter: [BadWeightlifter]){
        self.boxers = boxers
        self.swimmers = swimmers
        self.weightlifter = weightlifter
    }
    
    func athletesSportTypes() -> [String] {
        return boxers.map { $0.getSportType() } + swimmers.map{ $0.getSportType() } + weightlifter.map{ $0.getSportType() }
    }
}

func runBadOCPExample() {
    let badSportDepartment = BadSportDepartment(boxers: [BadBoxer()], swimmers: [BadSwimmer()],weightlifter: [BadWeightlifter()])
    print(badSportDepartment.athletesSportTypes())
}

runBadOCPExample()
