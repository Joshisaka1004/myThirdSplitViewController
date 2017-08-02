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
        splitViewController?.preferredDisplayMode = .primaryOverlay
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
            let detailVC = segue.destination as! DetailVC
            if let myPath = tableView.indexPathForSelectedRow {
                detailVC.index = myPath.row
            }
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myMode = splitViewController?.displayMode
        if myMode == .allVisible {
            splitViewController?.preferredDisplayMode = .primaryHidden
        }
    }
}
