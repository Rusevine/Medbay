//
//  Medication.swift
//  Medbay
//
//  Created by Wiljay Flores on 2018-12-02.
//  Copyright © 2018 wiljay. All rights reserved.
//

import UIKit

class Medication: NSObject {
    var id: String?
    var camperID: String?
    var medication: String?
    var dosage: String?
    var date: String?
    var time: String?
    var notes: String?
    var administered: Bool?
    
    init(attributes: [String:Any]) {
        self.id = attributes["id"] as? String
        self.camperID = attributes["camperID"] as? String
        self.medication = attributes["medication"] as? String
        self.dosage = attributes["dosage"] as? String
        self.date = attributes["date"] as? String
        self.time = attributes["time"] as? String
        self.notes = attributes["notes"] as? String
        self.administered = attributes["administered"] as? Bool
    }
    
}

//let attributes: [String:Any] = ["id": "M1", "camperID": "C1", "medication": "Chemo", "dosage": "10cc", "date": "12-05-2018", "time": "18:00", "notes": "do not administer if sick", "administered": false]
