import UIKit

/*
 Нужно разбивать интерфейсы на более мелкие, удовлетворяющие конкретным потребностям клиентов. Это лучше чем один интерфейс общего назначения. Цель принципа состоит в минимизации побочных эффектов и повторов за счет разделения ПО на независимые части
*/

// Не соответствие принципу заключается в том, что при расширении протокола объекты будут обладать лишними методами, которые им не к чему

protocol BatTransportVehicle {
    func drive()
    func fly()
}

class BadLandVehicle {
    func execute(vehicle: BatTransportVehicle) {
        vehicle.drive()
    }
}

class BadFlyingVehicle {
    func execute(vehicle: BatTransportVehicle) {
        vehicle.fly()
    }
}
