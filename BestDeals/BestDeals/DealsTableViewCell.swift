//
//  DealsTableViewCell.swift
//  BestDeals
//
//  Created by Hussain Shabbir on 4/29/17.
//  Copyright © 2017 Hussain Shabbir. All rights reserved.
//

import UIKit

class DealsTableViewCell: BaseTableViewCell {

    @IBOutlet weak var customLabel1: UILabel!
    @IBOutlet weak var customLabel2: UILabel!
    @IBOutlet weak var customLabel3: UILabel!
    @IBOutlet weak var customImageView: UIImageView!
    
    func populateCell(_ dealViewModel: DealsViewModel) {
        customLabel1.text = dealViewModel.title
        customLabel2?.text = dealViewModel.message
        customLabel3?.text = dealViewModel.company
    }    
}
