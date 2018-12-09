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
        medication = Medication(attributes: <#T##[String : Any]#>)
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


}
