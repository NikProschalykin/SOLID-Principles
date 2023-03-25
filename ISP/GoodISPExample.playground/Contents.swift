import UIKit

/*
 Нужно разбивать интерфейсы на более мелкие, удовлетворяющие конкретным потребностям клиентов. Это лучше чем один интерфейс общего назначения. Цель принципа состоит в минимизации побочных эффектов и повторов за счет разделения ПО на независимые части
*/

// Один протокол разделен на 2 мелких, чтобы объект имел доступ только к необходимым методам

protocol GoodFlyingTransportVehicle {
    func fly()
}

protocol GoodLandTransportVehicle{
    func drive()
}

class BadLandVehicle {
    func execute(vehicle: GoodLandTransportVehicle) {
        vehicle.drive()
    }
}

class BadFlyingVehicle {
    func execute(vehicle: GoodFlyingTransportVehicle) {
        vehicle.fly()
    }
}
