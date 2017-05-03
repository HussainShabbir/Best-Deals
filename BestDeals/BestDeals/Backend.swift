//
//  Backend.swift
//  BestDeals
//
//  Created by Hussain  Shabbir Hussain on 5/2/17.
//  Copyright © 2017 Hussain Shabbir. All rights reserved.
//

import Foundation
class Backend {
 typealias completion = ([Deals]) -> Void
 func fetchDataFromServer(completion: completion) {
  let dataSource = [["Title": "Free $20 eGift Card, Chcicken, w/Membership", "message": "$45.00 Free Shipping", "Company": "Sams Club", "dateStr": "2017-05-01"],["Title": "1 day Only: Tone Fitness Yoga Mat w/Floral Pattern Sale", "message": "$5.00 Free Shipping", "Company": "Amazon", "dateStr": "2017-05-01"],["Title":"eBay 20% off Select Guitars, Brass, and More", "message": "Free Shipping", "Company": "eBay", "dateStr": "2017-05-01"], ["Title": "Katy Perry Purr Eau de Parfum Sale", "message": "Free Shipping", "Company": "Amzaon", "dateStr": "2017-05-01"],["Title": "1 Day Only: T-Fal 2 Piece Fry Pan 8-inch/10.25-in Sale", "message": "$19.51 Free Shipping", "Company": "Amazon", "dateStr": "2017-05-01"], ["Title": "Kate Spade Cameron Street Snake Byrdie Sale", "message": "$111.04 Free Shipping","Company": "Amazon", "dateStr": "2017-05-02"],["Title": "Planters Nuts Sale","message": "$7.37 Free Shipping","Company": "Amazon", "dateStr": "2017-05-02"],["Title": "Stilla Stay All Day Liquid Liner Sale", "message": "$19.80 Free Shipping","Company": "Amazon", "dateStr": "2017-05-02"],["Title": "1 Day Only: Herschel Supply Co. Settlement Backpack Sale","message":"$34.98 Free Shipping","Company": "Amazon", "dateStr": "2017-05-02"],["Title": "Kate Spade Extra 25% Off Sale","message": "Free Shipping","Company": "Kate Spade New York", "dateStr": "2017-05-02"],["Title": "Bodum Pour Over Coffee Maker Sale", "message": "$15.51 Free Shipping","Company": "Amazon","dateStr": "2017-05-02"],["Title": "REI Garage Clearance 50% or more","message": "Free Shipping","Company": "REI", "dateStr": "2017-05-02"]]
  var dealModel = [Deals]()
  for data in dataSource {
   if let title = data["Title"], let message = data["message"], let company = data["Company"], let dateStr = data["dateStr"] {
    dealModel.append(Deals(title: title, message: message, company: company, dateStr: dateStr)!)
   }
  }
  completion(dealModel)
 }
}
