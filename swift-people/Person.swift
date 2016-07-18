//
//  Person.swift
//  swift-people
//
//  Created by Ehsan Zaman on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    
    let name: String
    private(set) var ageInYears : Int?
    private(set) var skills = Set<String>()
    var qualifiedTutor: Bool {return skills.count >= 4}
    
    init(name: String, ageInYears: Int?) {
        
        self.name = name
        self.ageInYears = ageInYears
        
    }
    convenience init (name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init() {
        self.init(name: "John Doe", ageInYears: nil)
    }
    
    func celebrateBirthday() -> String {
        if var age = ageInYears  {
            age += 1
            self.ageInYears = age
            let ordinal = age.ordinal()
            let birthdayCheer = "HAPPY \(ageInYears)\(ordinal.uppercaseString) BIRTHDAY, \(name.uppercaseString)!!!"
            return birthdayCheer
            
        }else {
            return "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
        }
    }
        func learnSkillBash() {
            skills.insert("bash")
        }
        
        func learnSkillXcode() {
            skills.insert("Xcode")
        }
        func learnSkillObjectiveC() {
            skills.insert("Objective - C")
        }
        func learnSkillSwift() {
            skills.insert("Swift")
        }
        func learnSkillInterfaceBuilder() {
            skills.insert("Interface Builder")
        }
}




