// github.com/andy489

class Animal{
    var _name: String
    var _age: UInt8
    
    class func classification() -> String {
        "Animal"
    }
    
    // the initializer must be added to the heirs
    required init(name: String, age: UInt8){
        _name = name
        _age = age
    }
    
    func display() -> Void{
        print("name: \(_name)\ntage: \(_age)\n-------------")
    }
}

final class Meerkat: Animal{
    var _type: String = ""
    var _habitat: String = ""
    
    override class func classification() -> String {
        "Meerkat"
    }
    
    init(name: String, age: UInt8, type: String, habitat: String){
        super.init(name: name, age: age)
        _type = type
        _habitat = habitat
    }
    
    required init(name: String, age: UInt8){
        fatalError("init(name:age) has not been implemented")
    }
    
    override func display() {
        print("name: \(_name)\ntage: \(_age)\ntype: \(_type)\nhabitat: \(_habitat)\n-------------")
    }
}

var edje = Meerkat(name: "Meerkat", age: 2, type: "Mamal", habitat: "dry open areas, scrublands and savannas")
edje.display()

print(Meerkat.classification())
