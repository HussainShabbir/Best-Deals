//
//  TabContainerViewController.swift
//  BestDeals
//
//  Created by Hussain Shabbir on 4/29/17.
//  Copyright © 2017 Hussain Shabbir. All rights reserved.
//

import UIKit

class TabContainerViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
 
 override func viewDidLoad() {
   super.viewDidLoad()
   if let tableView = tableView {
    tableView.estimatedRowHeight = 44
    tableView.rowHeight = UITableViewAutomaticDimension
   }
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  }
