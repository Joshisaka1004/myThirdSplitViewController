//
//  DetailVC.swift
//  myThirdSplitViewController
//
//  Created by Joachim Vetter on 02.08.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImages: UIImageView!
    var index: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        if index == nil && !daten.logos.isEmpty {
            index = 0
        }
        if index != nil && index < daten.logos.count {
            myImages.image = UIImage(named: daten.logos[index])
            myLabel.text = daten.teams[index]
        }
   
    }
}
