import Darwin
class Enemy {
    var num:Int = 10
    var score:Int = 0
    
    func move() {
        print("enemy is moving")
    }
    
    func attack() {
        print("attack is on")
    }
}

class Dragon:Enemy {
    override func move() {
        super.attack()
        print("dragon is moving")
    }
}

let objDragon = Dragon()

objDragon.move()
