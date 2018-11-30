//
//  CaperListTableViewCellTests.swift
//  MedbayTests
//
//  Created by Wiljay Flores on 2018-11-30.
//  Copyright © 2018 wiljay. All rights reserved.
//

import XCTest

class CaperListTableViewCellModelTests: XCTestCase {
    
    var cell: CamperListTableViewCellModel!
    var camper: Camper!

    override func setUp() {
        super.setUp()
        
        let attributes: [String:Any] = ["id": "C1", "name": "John Doe", "primaryDiagnosis": "Cough", "notes": "N/A", "otcPermitted": false, "allergies": "Peanuts, Bugs"]
        camper = Camper(attributes: attributes)
        cell = CamperListTableViewCellModel(camper: camper)
    }

    override func tearDown() {
        super.tearDown()
        cell = nil
        camper = nil
    }
    
    func testAttributes() {
        XCTAssertNotNil(cell.camper, "Camper is nil in CamperListTableViewCellModel")
    }


}
