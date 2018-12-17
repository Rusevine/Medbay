//
//  Employee.swift
//  Medbay
//
//  Created by Wiljay Flores on 2018-12-08.
//  Copyright © 2018 wiljay. All rights reserved.
//

import Foundation

class Employee: NSObject {
    var id: String?
    var name: String?
    var email: String?
    var password: String?
    var admin: Bool?
    
    init(attributes: [String:Any]) {
        self.id = attributes["id"] as? String
        self.name = attributes["name"] as? String
        self.email = attributes["email"] as? String
        self.password = attributes["password"] as? String
        self.admin = attributes["admin"] as? Bool
    }
}

