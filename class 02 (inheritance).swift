// github.com/andy489

// base class
class Human{
    var name: String
    var age: UInt8
    
    init(){
        self.name = ""
        self.age = 0
    }
    
    init(name: String, age: UInt8){
        self.name = name
        self.age = age
    }
    
    func display() -> Void{
        print("Human name is \(self.name) at age \(self.age).")
    }
    
    deinit {
        print("\(#function) is errasing")
    }
}

// derivate class
class Worker: Human { // Worker inherits Human
    var profession: String = ""
    
    /*
    init(name: String, age: UInt8, profession: String){
        super.init(name: name, age: age)
        self.profession = profession
    }
    */
    
    // convinience init cannot create objects (when we extend base classes)
    convenience init(name: String, age: UInt8, profession: String){
        self.init(name: name, age: age)
        self.profession = profession
    }
    
    override func display() -> Void {
        print("Human name is \(self.name) at age \(self.age). Profession: \(self.profession).")
    }
}

let stamat = Worker(name: "Stamat", age: 34, profession: "Developer")
stamat.profession = "Lecturer"
stamat.display()

var pesho: Worker? = Worker(name: "Pesho", age: 28, profession: "Taxi Driver")
pesho?.display()
pesho = nil
pesho?.display()
