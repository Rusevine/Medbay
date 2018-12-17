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
    var sut: MedicationDetailViewModel?
    var sutFail: MedicationDetailViewModel?

    override func setUp() {
        
        camper = Camper(attributes: ["id": "C1", "name": "John Doe", "primaryDiagnosis": "Cough", "notes": "N/A", "otcPermitted": false, "allergies": "Peanuts, Bugs"])
        
        employee = Employee(attributes: ["id":"N1", "name":"Nurse Joy", "email":"nurse@gmail.com","password":"imanurse123","admin":false])
        
        medication = Medication(attributes: ["id": "M1", "camperID": "C1", "name": "Chemo", "dosage": "10cc", "date": "12-05-2018", "time": "18:00", "notes": "do not administer if sick", "administered": false])
        
        sut = MedicationDetailViewModel(camper: camper!, employee: employee!, medication: medication!)
        
    }

    override func tearDown() {
        camper = nil
        employee = nil
        medication = nil
        sut = nil
    }
    
    func testMedicationViewDependencies() {
        
        XCTAssertNotNil(sut!.camper)
        XCTAssertNotNil(sut!.employee)
        XCTAssertNotNil(sut!.medication)
        
        XCTAssertNotNil(sut)
        XCTAssertNil(sutFail)
        
    }
    
    func testMedicationViewAttributes() {
        
        XCTAssertEqual(sut!.camperName, "John Doe")
        XCTAssertEqual(sut!.medicationName, "Chemo")
        XCTAssertEqual(sut!.dosage, "10cc")
        XCTAssertEqual(sut!.date, "12-05-2018")
        XCTAssertEqual(sut!.time, "18:00")
        XCTAssertEqual(sut!.notes, "do not administer if sick")
        XCTAssertEqual(sut!.administered, false)
        
        XCTAssertNil(sutFail?.camperName)
        XCTAssertNil(sutFail?.medicationName)
        XCTAssertNil(sutFail?.dosage)
        XCTAssertNil(sutFail?.date)
        XCTAssertNil(sutFail?.time)
        XCTAssertNil(sutFail?.notes)
        XCTAssertNil(sutFail?.administered)
        
    }



}
