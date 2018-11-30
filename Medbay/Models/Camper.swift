//
//  Camper.swift
//  Medbay
//
//  Created by Wiljay Flores on 2018-11-30.
//  Copyright © 2018 wiljay. All rights reserved.
//

import UIKit

class Camper: NSObject {
    
    var id: String?
    var name: String?
    var primaryDiagnosis: String?
    var notes: String?
    var otcPermitted: Bool?
    var allergies: String?
    
    init(attributes: [String:Any]) {
        self.id = attributes["id"] as? String
        self.name = attributes["name"] as? String
        self.primaryDiagnosis = attributes["primaryDiagnosis"] as? String
        self.notes = attributes["notes"] as? String
        self.otcPermitted = attributes["otcPermitted"] as? Bool
        self.allergies = attributes["allergies"] as? String
    }
   
}
