//
//  SwiftTableViewController.swift
//  SwiftTableView
//
//  Created by Will Townsend on 3/06/14.
//  Copyright (c) 2014 WTSNZ. All rights reserved.
//

import UIKit

class SwiftTableViewController: UITableViewController {

// - "Properties"
    
    var items: String[] = ["Hello, World!", "Second Row"];

    
// - Instance
    
    init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibName, bundle: nibBundle)
    }
    
    init(style: UITableViewStyle) {
        super.init(style: style)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "TableView!"
        
        // Register class
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    
// - UITableViewDataSource

    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell: UITableViewCell = tableView!.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath!) as UITableViewCell
        
        cell.textLabel.text = self.items[indexPath!.row];
        
        return cell;
        
    }
    
// - TableViewDelegate
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        // Push empty view controller on screen
        var emptyViewController: UIViewController = UIViewController()
        self.navigationController.pushViewController(emptyViewController, animated: true);
    }

}
