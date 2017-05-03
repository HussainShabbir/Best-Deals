//
//  TableViewExtension.swift
//  BestDeals
//
//  Created by Hussain Shabbir on 4/29/17.
//  Copyright © 2017 Hussain Shabbir. All rights reserved.
//

import UIKit

enum Nib: String {
    case dealsTableViewCell
    case dealsHeaderViewCell
    var fileName: String {
        return rawValue.capitalizedFirstLetter
    }
}

extension UITableView {
 func registerNib(nib: [Nib]) {
  for nibNm in nib {
   register(UINib(nibName: nibNm.fileName, bundle: nil), forCellReuseIdentifier: nibNm.fileName)
  }
 }
 
 func getCell<T: Reusable>(indexPath: IndexPath) -> T? {
  guard let cell = dequeueReusableCell(withIdentifier: T.reusableIdentifier, for: indexPath) as? T else {
   fatalError("Error")
  }
  return cell
 }
 
 func getHeaderViewCell<T: Reusable>() -> T? {
  guard let cell = dequeueReusableCell(withIdentifier: T.reusableIdentifier) as? T else {
   fatalError("Error")
  }
  return cell
 }
}
