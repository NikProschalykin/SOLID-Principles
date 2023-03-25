import UIKit

/*
 Объекты в программе должны быть заменяемые на экземпляры их подтипов без изменения правильности выполнения программы.
 */

// Принцип выполняется, потому что какой бы дочерний класс мы не создавали мы можем получить правильное выполнение метода класса родителя

protocol Vehicle {
   func getMaxSpeed()
}

class Car: Vehicle {
    func getMaxSpeed() {
        print("250 km/h")
    }
}

class Bike: Vehicle {
    func getMaxSpeed() {
        print("35 km/h")
    }
}

class Cycle: Vehicle {
    func getMaxSpeed() {
        print("20 km/h")
    }
}

class GoodLSPExamle {
    func getMaxSpeed(vehicle: Vehicle) {
        vehicle.getMaxSpeed()
    }
}

func runBadLSPExample() {
    let speedTracker = GoodLSPExamle()
    speedTracker.getMaxSpeed(vehicle: Car())
    speedTracker.getMaxSpeed(vehicle: Bike())
    speedTracker.getMaxSpeed(vehicle: Cycle())
}

runBadLSPExample()
