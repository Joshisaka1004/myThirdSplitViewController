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
        let myButton = splitViewController?.displayModeButtonItem
        navigationItem.leftBarButtonItem = myButton
        navigationItem.leftItemsSupplementBackButton = true
        if index != nil && index < daten.logos.count {
            myImages.image = UIImage(named: daten.logos[index])
            myLabel.text = daten.teams[index]
        }
   
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showBigger" {
            let controller = segue.destination as! showBiggerVC
            controller.index = index
        }
    }
}
