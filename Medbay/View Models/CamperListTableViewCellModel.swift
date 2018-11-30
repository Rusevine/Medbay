//
//  CamperListTableViewCellModel.swift
//  Medbay
//
//  Created by Wiljay Flores on 2018-11-30.
//  Copyright © 2018 wiljay. All rights reserved.
//

import UIKit

class CamperListTableViewCellModel: NSObject {
    var camper: Camper?
    
    init(camper: Camper) {
        self.camper = camper
    }
}
