//
//  User.swift
//  Taxes
//
//  Created by Paul Makey on 17.03.24.
//

import Foundation

struct User {
    let id: UUID
    let role: Role
    
    var name: String
    let surname: String
    let password: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var userDescription: String {
        """
        USER: \(id)
        ROLE: \(role)
        
        Name: \(name)
        Surname: \(surname)
        Email: \(email)
        Phone Number: \(phoneNumber)
        """
    }
    
    static func getUser() -> User {
        User(
            id: UUID(),
            role: .admin,
            name: "Test_Admin",
            surname: "Test_Admin",
            password: "Test_Password",
            email: "Test_Email",
            phoneNumber: "+375(44)111-22-33"
        )
    }
}

enum Role {
    case admin
    case user
}
