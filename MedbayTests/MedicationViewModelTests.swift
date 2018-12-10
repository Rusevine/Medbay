//
//  MedicationViewModelTests.swift
//  Medbay
//
//  Created by Wiljay Flores on 2018-12-08.
//  Copyright © 2018 wiljay. All rights reserved.
//

import XCTest
//@testable import Medbay


class MedicationViewModelTests: XCTestCase {
    
    var camper: Camper?
    var employee: Employee?
    var medication: Medication?


    override func setUp() {
        
        camper = Camper(attributes: ["id": "C1", "name": "John Doe", "primaryDiagnosis": "Cough", "notes": "N/A", "otcPermitted": false, "allergies": "Peanuts, Bugs"])
        
        employee = Employee(attributes: ["id":"N1", "name":"Nurse Joy", "email":"nurse@gmail.com","password":"imanurse123","admin":false])
        
        medication = Medication(attributes: ["id": "M1", "camperID": "C1", "medication": "Chemo", "dosage": "10cc", "date": "12-05-2018", "time": "18:00", "notes": "do not administer if sick", "administered": false])
        
    }

    override func tearDown() {
        
    }
    
    func testMedicationViewDependencies() {
        
        let vc = MedicationDetailViewModel()
        
        vc.camper = camper
        vc.employee = employee
        vc.medication = medication
        
        XCTAssertNotNil(vc.camper)
        XCTAssertNotNil(vc.employee)
        XCTAssertNotNil(vc.medication)
        
    }


}
