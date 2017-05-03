//
//  StoryboardExtension.swift
//  BestDeals
//
//  Created by Hussain Shabbir on 4/26/17.
//  Copyright © 2017 Hussain Shabbir. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    enum Storyboard: String {
        case main
        case deals
        
        var fileName: String {
            return rawValue.capitalizedFirstLetter
        }
    }
    
    convenience init(storyboard: Storyboard, bundle: Bundle? = nil) {
        self.init(name: storyboard.fileName, bundle: bundle)
    }
    
    func instantiateViewController<T: UIViewController>() -> T where T: StoryboardIdentifiable {
        guard let viewController = self.instantiateViewController(withIdentifier: T.storyboardIdentifier) as? T else {
            fatalError("Error Could not load \(T.storyboardIdentifier)")
        }
        return viewController
    }
}
