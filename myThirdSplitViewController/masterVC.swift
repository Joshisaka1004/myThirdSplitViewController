//
//  masterVC.swift
//  myThirdSplitViewController
//
//  Created by Joachim Vetter on 02.08.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class masterVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        splitViewController?.preferredDisplayMode = .allVisible
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daten.teams.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCurrent = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        myCurrent.textLabel?.text = daten.teams[indexPath.row]
        return myCurrent
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let tempDetailVC = segue.destination as! UINavigationController
            let detailVC = tempDetailVC.topViewController as! DetailVC
            if let myPath = tableView.indexPathForSelectedRow {
                detailVC.index = myPath.row
                splitViewController?.preferredDisplayMode = .primaryHidden
            }
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myMode = splitViewController?.displayMode
        if myMode == .primaryOverlay {
            splitViewController?.preferredDisplayMode = .allVisible
        }
    }
}
