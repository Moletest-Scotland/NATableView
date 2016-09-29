//
//  ViewController.swift
//  NATableView
//
//  Created by Nick Ager on 05/30/2016.
//  Copyright (c) 2016 Nick Ager. All rights reserved.
//

import UIKit
import NATableView

class ViewController: UIViewController {

    @IBOutlet var tableView: NATableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let cells = (1...10).map { (val) -> NACellActionPair in
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
            cell.textLabel?.text = "value is \(val)"
            cell.detailTextLabel?.text = "twice the value is \(val * 2)"
            return (cell, {[unowned self] (_) in self.showMessageForValue(val)})
        }
        
        let section = NATableSection(title: "A Test", cells: cells)
        tableView.sections = [section]
        
        tableView.anyCellSelectedAction = { (_) in print("A cell has been selected")}
    }
    
    
    func showMessageForValue(_ val: Int) {
        let alertController  = UIAlertController(title:"Cell selected" , message: "Value = '\(val)'", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
}

