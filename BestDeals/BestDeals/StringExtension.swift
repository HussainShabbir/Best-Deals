//
//  StringExtension.swift
//  BestDeals
//
//  Created by Hussain Shabbir on 4/26/17.
//  Copyright © 2017 Hussain Shabbir. All rights reserved.
//

import Foundation

extension String {
    
    var capitalizedFirstLetter: String {
        let first = String(characters.prefix(1)).capitalized
        let other = String(characters.dropFirst())
        return first + other
    }
}
