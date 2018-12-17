//
//  Medication.swift
//  Medbay
//
//  Created by Wiljay Flores on 2018-12-02.
//  Copyright © 2018 wiljay. All rights reserved.
//

import Foundation

class Medication: NSObject {
    var id: String?
    var camperID: String?
    var name: String?
    var dosage: String?
    var date: String?
    var time: String?
    var notes: String?
    var administered: Bool?
    
    init(attributes: [String:Any]) {
        self.id = attributes["id"] as? String
        self.camperID = attributes["camperID"] as? String
        self.name = attributes["name"] as? String
        self.dosage = attributes["dosage"] as? String
        self.date = attributes["date"] as? String
        self.time = attributes["time"] as? String
        self.notes = attributes["notes"] as? String
        self.administered = attributes["administered"] as? Bool
    }
    
}


