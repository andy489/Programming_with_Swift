**HW 2, Task 03 & 04**

Да се имплементира шаблонен свързан списък със съответния интерфейс.

```swift
    class List<T> {
        var value: T
        var next: List<T>?
    }

    extension List {
        subscript(index: Int) -> T? {
        //TODO: implementation
        }
    }

    extension List {
        var length: Int {
        //TODO: implementation
        }
    }

    extension List {
        func reverse() {
        //TODO: implementation
        }
    }
```

Да се имплемнтира функция, която от списък от вложени списъци (може да решите задачата и за произволно ниво на влагане) 
генерира списък с всички елементи.
```swift
        extension List {
            func flatten() -> List {
            //TODO: implementation
            }
        }
```
Пример:
```swift
    List<Any>(List<Int>(2, 2), 21, List<Any>(3, List<Int>(5, 8))).flatten()

    List(2, 2, 21, 3, 5, 8)
```
