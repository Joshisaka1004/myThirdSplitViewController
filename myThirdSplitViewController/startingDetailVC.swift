//
//  startingDetailVC.swift
//  myThirdSplitViewController
//
//  Created by Joachim Vetter on 02.08.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class startingDetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myButton = splitViewController?.displayModeButtonItem
        navigationItem.leftBarButtonItem = myButton
        navigationItem.leftItemsSupplementBackButton = true
    }
}
