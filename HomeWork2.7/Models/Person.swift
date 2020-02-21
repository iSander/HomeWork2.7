//
//  Person.swift
//  HomeWork2.7
//
//  Created by Alex Sander on 19.02.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    
    static func getPersonList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0..<names.count {
            let person = Person(firstName: names[index],
                                lastName: surnames[index],
                                email: emails[index],
                                phone: phones[index])
            
            persons.append(person)
        }
        
        return persons
    }
}
