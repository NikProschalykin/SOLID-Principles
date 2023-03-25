import UIKit

/*
 Программные сущности должны быть открыты для расширения, но закрыты для модификации, т.е новый функционал вводится путем добавления нового кода, а не изменением старого, уже работающего.
 */


// Это код соответсвующий принципу open-closed, потому что для добавления спортсмена нам нужно только добавить новый класс и ничего не менять в уже существующих

protocol GoodSportsman{
    func getSportType() -> String
}

class GoodBoxer: GoodSportsman {
    func getSportType() -> String {
        return "Boxing"
    }
}

class GoodSwimmer: GoodSportsman {
    func getSportType() -> String {
        return "Swimming"
    }
}

class GoodWeightlifter: GoodSportsman {
    func getSportType() -> String {
        return "Weightlifter"
    }
}

class GoodSportDepartment{
    private let athletes: [GoodSportsman]
    
    init(athletes: [GoodSportsman]){
        self.athletes = athletes
    }
    
    func athletesSportTypes() -> [String] {
        return athletes.map { $0.getSportType() }
    }
}

func runGoodOCPExample() {
    let goodSportDepartment = GoodSportDepartment(athletes: [GoodBoxer(),GoodSwimmer(),GoodWeightlifter()])
    print(goodSportDepartment.athletesSportTypes())
}

runGoodOCPExample()
