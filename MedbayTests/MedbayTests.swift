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

}
