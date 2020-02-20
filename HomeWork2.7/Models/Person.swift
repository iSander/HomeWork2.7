//
//  Person.swift
//  HomeWork2.7
//
//  Created by Alex Sander on 19.02.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

struct Person {
    var firstName: String
    var lastName: String
    var email: String
    var phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    
    static func getPersonList() -> [Person] {
        
        let firstNames = ["Paula",
                          "Ranveer",
                          "Darragh",
                          "Artur",
                          "Parris",
                          "Bertram",
                          "Ivie",
                          "Wil",
                          "Vinay",
                          "Patrick"].shuffled()
        
        let lastNames = ["Charlton",
                         "Smart",
                         "Cordova",
                         "Lyon",
                         "Willis",
                         "Howell",
                         "Kenny",
                         "Booker",
                         "Chang",
                         "Matthews"].shuffled()
        
        let emails = ["roesch@outlook.com",
                      "ilial@icloud.com",
                      "kimvette@yahoo.com",
                      "eminence@icloud.com",
                      "uqmcolyv@aol.com",
                      "hampton@gmail.com",
                      "nwiger@sbcglobal.net",
                      "thrymm@live.com",
                      "dkasak@mac.com",
                      "danneng@hotmail.com"].shuffled()
        
        let phoneNumbers = ["(851) 402-7328",
                            "(333) 233-2286",
                            "(233) 469-4653",
                            "(954) 642-0353",
                            "(751) 275-8168",
                            "(995) 544-0455",
                            "(893) 419-8613",
                            "(444) 775-5216",
                            "(946) 852-6245",
                            "(662) 953-4034"].shuffled()
        
        var persons = [Person]()
        for i in 0..<firstNames.count {
            let person = Person(firstName: firstNames[i],
                                  lastName: lastNames[i],
                                  email: emails[i],
                                  phone: phoneNumbers[i])
            persons.append(person)
        }
        return persons
    }
}
