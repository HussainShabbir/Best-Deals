//
//  FirstViewController.swift
//  BestDeals
//
//  Created by Hussain Shabbir on 4/23/17.
//  Copyright © 2017 Hussain Shabbir. All rights reserved.
//

import UIKit

class DealsViewController: TabContainerViewController {
 lazy var dataSource: [DealsViewModel] = []
 
 override func viewDidLoad() {
 super.viewDidLoad()
 tableView.estimatedSectionHeaderHeight = 44
 tableView.sectionHeaderHeight = UITableViewAutomaticDimension
 let backend = Backend()
 backend.fetchDataFromServer { (deals) in
 for deal in deals {
  dataSource.append(DealsViewModel(title: deal.title, message: deal.message, company: deal.company, dateStr: deal.dateStr))
  }
 }
 tableView.registerNib(nib: [.dealsTableViewCell, .dealsHeaderViewCell])
   // Do any additional setup after loading the view, typically from a nib.
}

 override func didReceiveMemoryWarning() {
     super.didReceiveMemoryWarning()
     // Dispose of any resources that can be recreated.
 }
}

extension DealsViewController: UITableViewDataSource {
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  return dataSource.count
 }
 
 func numberOfSections(in tableView: UITableView) -> Int {
  return 2
 }
 
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  guard let tableViewCell: DealsTableViewCell = tableView.getCell(indexPath: indexPath) else { return UITableViewCell() }
   tableViewCell.imageView?.image = UIImage(named: "\(indexPath.row + 1)")
   tableViewCell.populateCell(dataSource[indexPath.row])
   return tableViewCell
 }
}

extension DealsViewController: UITableViewDelegate {
 func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  tableView.deselectRow(at: indexPath, animated: true)
 }
 
 func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
  guard let cell: DealsHeaderViewCell = tableView.getHeaderViewCell() else { return UIView() }
  cell.label.text = "2017-02-01"
  return cell
 }
}

