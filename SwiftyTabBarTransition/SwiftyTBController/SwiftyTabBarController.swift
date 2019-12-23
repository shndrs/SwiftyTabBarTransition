//
//  SwiftyTabBarController.swift
//  SwiftyTabBarTransition
//
//  Created by NP2 on 12/22/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

import UIKit

open class SwiftyTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    open func setup() -> UIViewControllerAnimatedTransitioning? {
        
        return nil
    }
    
    public func tabBarController(_ tabBarController: UITabBarController,
                          animationControllerForTransitionFrom fromVC: UIViewController,
                          to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        setup()
    }
    
}

