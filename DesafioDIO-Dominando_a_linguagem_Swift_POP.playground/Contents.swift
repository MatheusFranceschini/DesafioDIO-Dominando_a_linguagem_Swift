import UIKit

protocol Car {
    var brand: String { get }
    var maximumSpeed: Double { get }
    var name: String { get }
    
    init(maximumSpeed: Double, name: String)
    
    func race()
    
    func stop()
}

class Ferrari: Car {
    var brand: String
    var maximumSpeed: Double
    var name: String

    required init(maximumSpeed: Double, name: String) {
        brand = "Ferrari"
        self.maximumSpeed = maximumSpeed
        self.name = name
    }
    
    func race() {
        
    }
    
    func stop() {
        
    }
    
    
}

let ferrariSpider = Ferrari(maximumSpeed: 340.0, name: "Ferrari Spider")
print(ferrariSpider.brand)
