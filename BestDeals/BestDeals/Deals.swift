//
//  Deals.swift
//  BestDeals
//
//  Created by Hussain  Shabbir Hussain on 5/2/17.
//  Copyright © 2017 Hussain Shabbir. All rights reserved.
//

import Foundation

struct Deals {
 var title: String = ""
 var message: String = ""
 var company: String = ""
 var dateStr: String = ""
 
 init?(title: String, message: String, company: String, dateStr: String) {
  self.title = title
  self.message = message
  self.company = company
  self.dateStr = dateStr
 }
}
