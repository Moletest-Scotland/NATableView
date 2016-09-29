//
//  NATableView.swift
//  ShareCare
//
//  Created by Nick Ager on 03/05/2016.
//  Copyright © 2016 ShareCare Ltd. All rights reserved.
//

import UIKit

public typealias NACellAction = (UITableViewCell) -> Void
public let NANoCellAction: NACellAction = { (_) in }
public typealias NACellActionPair = (cell: UITableViewCell, action: NACellAction)

public struct NATableSection {
    let title : String?
    public var cells : [NACellActionPair]
    
    public init(title: String?, cells: [NACellActionPair]) {
        self.title = title
        self.cells = cells
    }
}

open class NATableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    open var anyCellSelectedAction: NACellAction = NANoCellAction
    
    open var sections : [NATableSection] = [] {
        didSet {
            forceLayout()
        }
    }
    
    public override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style:style)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        self.delegate = self
        self.dataSource = self
    }
    
    
    // MARK :
    
    func forceLayout() {
        reloadData()
    }
    
    // MARK: UITableViewDelegate
    

    open func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let (cell, _) = cellFrom(indexPath: indexPath)
        return cell.frame.size.height
    }
    
    open func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let (cell, action) = cellFrom(indexPath: indexPath)
        
        anyCellSelectedAction(cell)
        action(cell)
        
        cell.isSelected = false
    }
    
    // MARK: UITableViewDataSource
    
    open func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = sections[section]
        return section.cells.count
    }
    
    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let (cell, _) = cellFrom(indexPath: indexPath)
        return cell
    }
    
    open func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = sections[section]
        return section.title
    }
    
    // MARK:
    
    func cellFrom(indexPath: IndexPath) -> NACellActionPair {
        let section = sections[indexPath.section]
        return section.cells[indexPath.row]
    }

}
