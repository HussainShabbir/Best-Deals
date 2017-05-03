//
//  Reusable.swift
//  BestDeals
//
//  Created by Hussain  Shabbir Hussain on 5/2/17.
//  Copyright © 2017 Hussain Shabbir. All rights reserved.
//

import UIKit

protocol Reusable {
 static var reusableIdentifier: String { get }
}

extension Reusable {
 static var reusableIdentifier: String {
  return String(describing: self)
 }
}

