//
//  TabBarController.swift
//  SwiftyTabBarTransitionExamples
//
//  Created by NP2 on 5/25/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit
import SwiftyTabBarTransition

final class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
}

// MARK: - UITabBarControllerDelegate

extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        let transitionOptions = SwiftyTabBarTransitionOptions(duration: 0.3, animationOption: .bottomToTop)
        let transition = SwiftyTabBarTransition.set(transition: transitionOptions)
        return transition
    }
}
