//
//  Volunteer.swift
//  SafeWalkVolunteer
//
//

import Foundation

protocol Volunteer: ObservableObject {
    var name: String { get set }
    var age: Int { get set }
    var maxHours: Int { get }
}

class SafeWalkVolunteer: Volunteer {
    
    var name = ""
    var age = 0
    
    var maxHours: Int
    {
        if (age < 18){
            return 1
        }
        if (age >= 18){
            return 3
        }
        return 0
    }

    init(){
        self.name = ""
        self.age = 0
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    

}

