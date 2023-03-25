import UIKit

/*
 Модули верхних уровней не должны зависеть от модулей нижних уровней. Оба типа модулей должны зависеть от абстракций.
 Абстракции не должны зависеть от деталей. Детали должны зависеть от абстракций.
 */

//Не соответвие принципу заключается в присутсвии "жесткой" зависимости класса Order от класса Discount

class Order {
    var orderId: Int
    var price: Float
    
    init(orderId: Int, price: Float) {
        self.orderId = orderId
        self.price = price
    }
    
    func getTotalAmount() -> Float {
        let discount = Discount()
        return price * discount.calculate()
    }
}

enum Seasons{
    case Spring
    case Winter
    case Autumn
    case Summer
}

class Discount {
    let season: Seasons = .Spring
    
    func calculate() -> Float {
        switch season {
        case .Spring:  return 0.9
        case .Winter:  return 0.83
        case .Autumn:  return 0.77
        case .Summer:  return 0.8
        }
    }
}
