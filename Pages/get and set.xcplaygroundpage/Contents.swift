//: [Previous](@previous)

import Foundation

public class Person {
    private var _id: Int = 0
    private var _lastName: String = ""

    public init(id: Int, lastName: String) {
        self.id = id
        self.lastName = lastName
    }

    public var id: Int {
        get {
            print("value get from private id", self._id)
            return self._id;
        }
        set {
            if newValue < 0 || newValue > 1000 {
                // Swift setter cannot throw error.
                fatalError("invalid value for id")
            } else {
                print("value set to private id", self._id)
                self._id = newValue
            }
        }
    }

    public var lastName: String {
        get {
            return self._lastName
        }
        set {
            // In Swift, non-optional String can never get nil.
            if newValue.isEmpty {
                fatalError("invalid value for lastName")
            } else {
                self._lastName = newValue
            }
        }
    }
}

let person = Person(id:1,lastName:"naik")
print(person.id)
