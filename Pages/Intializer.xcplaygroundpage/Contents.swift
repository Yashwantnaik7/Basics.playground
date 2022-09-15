struct ProductDefault {
    let name:String
    let price:Int
    let quantity:Int
}

//swift will provide default initialiser for members of structure
var objProdDef = ProductDefault(name: "iPhone", price: 49999, quantity:2)
print(objProdDef.name)

//we can create init
struct Product {
    let name:String
    let price:Int
    let quantity:Int
    let totalPrice:Int
    
    init(productName:String, productPrice:Int, prodQuantity:Int) {
        self.name = productName
        self.price = productPrice
        self.quantity = prodQuantity
        self.totalPrice = productPrice * prodQuantity
    }
}

var objProd = Product(productName: "macbook", productPrice: 89999, prodQuantity: 2)
print(objProd.name, objProd.totalPrice)

//swift won't initialize members of class by default

class ProductClassDef {
    let name:String = "Nothing 1" // need initialise here itself for all the members or use init method
    let price:Int = 31000
    let quantity:Int = 3
}

//error - no initialiser inside class and there is no default initialier for class in swift
/*
 
let objProductClass = ProductClassDef(name:"Nothing 1", price: 31000, quantity: 1)
print(objProductClass)
 
*/

class ProductClass {
    let name:String
    let price:Int
    let quantity:Int
    let totalPrice:Int
    
    init(productName:String, productPrice:Int, prodQuantity:Int) {
        self.name = productName
        self.price = productPrice
        self.quantity = prodQuantity
        self.totalPrice = productPrice * prodQuantity
    }
}

var objProdClass = ProductClass(productName: "samsung", productPrice: 22500, prodQuantity: 2)
print(objProdClass.name, objProdClass.totalPrice)

//convenience init - it is used as secondary init for designated init

class Cake {
    let name : String
    let quantity: Int
    
    init(cakeName:String, cakeQuantity:Int) { //designated init
        self.name = cakeName
        self.quantity = cakeQuantity
    }
    
    convenience init(cakeName: String) {
        self.init(cakeName:cakeName, cakeQuantity: 1)
    }
}

let objCake = Cake(cakeName: "happy birthday")

print(objCake.name, objCake.quantity)

let objCakeMult = Cake(cakeName: "Welcome Home", cakeQuantity: 3)
print(objCakeMult.name, objCakeMult.quantity)
