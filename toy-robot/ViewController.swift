//
//  ViewController.swift
//  toy-robot
//
//  Created by Uttam Ukkoji on 28/05/19.
//  Copyright © 2019 Contentstack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var xText: UITextField!
    @IBOutlet weak var yText: UITextField!
    @IBOutlet weak var directionText: UITextField!
    @IBOutlet weak var placeButton: UIButton!
    var commander = Commander(robot: Robot(), table: Table(rows: 5, columns: 5)!, commanderArray: [Executable]())

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func placeRobot(_ sender: Any) {
        commander.robot.reportArray.removeAll()
        if let xString = xText.text, let yString = yText.text, let diretionString = directionText.text {
            commander.parse(command: "PLACE \(xString), \(yString), \(diretionString)")
        }
    }
    
    @IBAction func executeCommander(_ sender: Any) {
        commander.execute()
        commander.commanderArray.removeAll()
        self.xText.text = nil
        self.yText.text = nil
        self.directionText.text = nil
        performSegue(withIdentifier: "Show_Report", sender: nil)
    }
    
    @IBAction func moveCommand(_ sender: Any) {
        commander.parse(command: "MOVE")
    }
   
    @IBAction func rightCommand(_ sender: Any) {
        commander.parse(command: "RIGHT")
    }
    
    @IBAction func leftCommand(_ sender: Any) {
        commander.parse(command: "LEFT")
    }
    
    @IBAction func reportCommand(_ sender: Any) {
        commander.parse(command: "REPORT")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let reportVC = segue.destination as? ReportTableViewController {
            reportVC.reportArray = commander.robot.reportArray
        }
    }
}

