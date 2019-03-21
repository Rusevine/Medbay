//
//  MedbayTests.swift
//  MedbayTests
//
//  Created by Wiljay Flores on 2018-11-30.
//  Copyright © 2018 wiljay. All rights reserved.
//

import XCTest
@testable import Medbay

class MedbayTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCamperAttributes() {
        let attributes: [String:Any] = ["id": "C1", "name": "John Doe", "primaryDiagnosis": "Cough", "notes": "N/A", "otcPermitted": false, "allergies": "Peanuts, Bugs"]
        let camper = Camper(attributes: attributes)
        XCTAssertEqual(camper.id, "C1")
        XCTAssertEqual(camper.name, "John Doe")
        XCTAssertEqual(camper.primaryDiagnosis, "Cough")
        XCTAssertEqual(camper.notes, "N/A")
        XCTAssertEqual(camper.otcPermitted, false)
        XCTAssertEqual(camper.allergies, "Peanuts, Bugs")
    }
    
    func testMedicationAttributes() {
        let attributes: [String:Any] = ["id": "M1", "camperID": "C1", "name": "Chemo", "dosage": "10cc", "date": "12-05-2018", "time": "18:00", "notes": "do not administer if sick", "administered": false]
        
        let medication = Medication(attributes: attributes)
        XCTAssertEqual(medication.id, "M1")
        XCTAssertEqual(medication.camperID, "C1")
        XCTAssertEqual(medication.name, "Chemo")
        XCTAssertEqual(medication.dosage, "10cc")
        XCTAssertEqual(medication.date, "12-05-2018")
        XCTAssertEqual(medication.time, "18:00")
        XCTAssertEqual(medication.notes, "do not administer if sick")
        XCTAssertEqual(medication.administered, false)
    }
    
    func testEmployeeAttributes() {
        let attributes: [String:Any] = ["id":"N1", "name":"Nurse Joy", "email":"nurse@gmail.com","password":"imanurse123","admin":false]
        
        let employee = Employee(attributes: attributes)
        XCTAssertEqual(employee.id, "N1")
        XCTAssertEqual(employee.name, "Nurse Joy")
        XCTAssertEqual(employee.email, "nurse@gmail.com")
        XCTAssertEqual(employee.password, "imanurse123")
        XCTAssertEqual(employee.admin, false)
    }

    func testPull() {
        
    }

    func addMoreTest() {

    }

    func testMore() {
        
    }

}
