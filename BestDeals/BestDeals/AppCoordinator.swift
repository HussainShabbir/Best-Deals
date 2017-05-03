//
//  AppCoordinator.swift
//  BestDeals
//
//  Created by Hussain Shabbir on 4/26/17.
//  Copyright © 2017 Hussain Shabbir. All rights reserved.
//

import UIKit

class AppCoordinator {
    let navigationViewController: UINavigationController?
    
    init(navigationViewController: UINavigationController?) {
        self.navigationViewController = navigationViewController
    }
    
    func startMainCoordinator() {
        if let viewController = UIStoryboard(storyboard: .main).instantiateViewController(withIdentifier: "TabBarViewController") as? TabBarViewController {
            self.navigationViewController?.setViewControllers([viewController], animated: true)
        }
    }
    
}
