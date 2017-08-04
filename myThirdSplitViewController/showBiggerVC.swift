//
//  showBiggerVC.swift
//  myThirdSplitViewController
//
//  Created by Joachim Vetter on 03.08.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class showBiggerVC: UIViewController {

    @IBOutlet weak var myImages: UIImageView!
    var index: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        if index != nil && index < daten.logos.count {
            myImages.image = UIImage(named: daten.logos[index])
        }
    }

}
