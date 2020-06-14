// github.com/andy489

class Human{
    var name: String = ""
    var age: UInt8 = 0
    
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
    
}

let andy = Human.init() // same as "let andy = Human()"

andy.name = "Andrey Stoev"
andy.age = 30
print("Human name: \(andy.name), age: \(andy.age)")

let ref = andy

andy.name = "A. Stoev"
print("Human name: \(ref.name), age: \(ref.age)")

// the objects andy and ref address the same place in the memory

let somebody = Human(name: "Pesho", age: 22)
somebody.display()
