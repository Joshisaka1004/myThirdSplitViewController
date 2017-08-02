//
//  myData.swift
//  myThirdSplitViewController
//
//  Created by Joachim Vetter on 02.08.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

struct myData {
    var teams: [String]!
    var logos: [String]!
    init() {
        teams = ["Bayern München", "Bor. Dortmund", "1. FC Köln", "TSG Hoffenheim", "Hertha BSC Berlin", "Hannover 96"]
        logos = ["fcb", "dortmund", "koeln", "hoffenh", "Hertha", "Hannover"]
    }
}
var daten = myData()
