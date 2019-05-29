//
//  ReportTableViewController.swift
//  toy-robot
//
//  Created by Uttam Ukkoji on 30/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import UIKit

class ReportTableViewController: UITableViewController {
    var reportArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return reportArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reportCellIdentifier", for: indexPath)
        cell.textLabel?.text = reportArray[indexPath.row]

        return cell
    }
    
}
