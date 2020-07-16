// Промяна на обхвата на елементите на масив:

var shoppingList = [("candy", 2.54), ("bananas",3.31), ("bread", 0.95), ("milk", 2.20)]
print(shoppingList)

shoppingList[1...2] = [("ice cream", 1.33), ("pie", 3.70)]
print(shoppingList)

shoppingList += [("water", 0.68)]
print(shoppingList)

/*
func cmp(_ p1: (String, Double), _ p2: (String, Double)) -> Bool{
    return p1.1 > p2.1
}

var sortedShoppingList = shoppingList.sorted(by: cmp)
print(sortedShoppingList)
*/

var sortedShoppingList = shoppingList.sorted(by: {p1, p2 in return p1.1 > p2.1})
print(sortedShoppingList)
