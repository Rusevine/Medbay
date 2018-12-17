//
//  MedicationDetailViewModel.swift
//  Medbay
//
//  Created by Wiljay Flores on 2018-12-09.
//  Copyright © 2018 wiljay. All rights reserved.
//

import Foundation

class MedicationDetailViewModel: NSObject {
    
    var camper: Camper
    var employee: Employee
    var medication: Medication
    
    var camperName: String?
    var medicationName: String?
    var dosage: String?
    var date: String?
    var time: String?
    var notes: String?
    var administered: Bool?
    
    
    init(camper: Camper, employee: Employee, medication: Medication) {
        
        self.camper = camper
        self.employee = employee
        self.medication = medication
        
        if let camperName = camper.name {
            self.camperName = camperName
        } else {
            self.camperName = nil
        }
        
        if let medicationName = medication.name {
            self.medicationName = medicationName
        } else {
            self.medicationName = nil
        }
        
        if let dosage = medication.dosage {
            self.dosage = dosage
        } else {
            self.dosage = nil
        }
        
        if let date = medication.date {
            self.date = date
        } else {
            self.date = nil
        }
        
        if let time = medication.time {
            self.time = time
        } else {
            self.time = nil
        }
        
        if let notes = medication.notes {
            self.notes = notes
        } else {
            self.notes = nil
        }
        
        if let administered = medication.administered {
            self.administered = administered
        } else {
            self.administered = nil
        }
    }
    
    

}
