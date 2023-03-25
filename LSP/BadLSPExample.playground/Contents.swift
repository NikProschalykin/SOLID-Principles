import UIKit

/*
 Объекты в программе должны быть заменяемые на экземпляры их подтипов без изменения правильности выполнения программы.
 */

// Несоответсвие принципу подстановки Барбары-Лисков заключается в том, что при добавлении дочернего класса Cycle, мы не сможем получить данные из метода, потому что не делается проверка на него в методе getMaxSpeed

class Vehicle {}

class Car: Vehicle {}

class Bike: Vehicle {}

class Cycle: Vehicle {}

class BadLSPExamle {
    func getMaxSpeed(vehicle: Vehicle) {
        if (vehicle is Car) {
            print("250 km/h")
        } else if (vehicle is Bike){
            print("35 km/h")
        }
    }
}

func runBadLSPExample() {
    let speedTracker = BadLSPExamle()
    speedTracker.getMaxSpeed(vehicle: Car())
    speedTracker.getMaxSpeed(vehicle: Bike())
    speedTracker.getMaxSpeed(vehicle: Cycle())
}

runBadLSPExample()
