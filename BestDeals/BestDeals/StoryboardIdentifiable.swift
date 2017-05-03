//
//  StoryboardIdentifiable.swift
//  BestDeals
//
//  Created by Hussain Shabbir on 4/26/17.
//  Copyright © 2017 Hussain Shabbir. All rights reserved.
//

import UIKit

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}
