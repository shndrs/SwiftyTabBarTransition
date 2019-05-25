//
//  SwiftyTabBarTransitionOptions.swift
//  SwiftyTabBarTransition
//
//  Created by NP2 on 5/25/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

public class SwiftyAnimateTransition {
    
    public var transitionContext: UIViewControllerContextTransitioning!
    public var originTransform: CGAffineTransform!
    public var destinationTransform: CGAffineTransform!
    public var duration: TimeInterval!
    
    public typealias Closure = (SwiftyAnimateTransition) -> Void
    
    init(closure:Closure) {
        closure(self)
    }
}

public class SwiftyAnimateDestinationTransition {
    public var transitionContext: UIViewControllerContextTransitioning!
    public var destinationTransform: CGAffineTransform!
    public var duration: TimeInterval!
    
    public typealias Closure = (SwiftyAnimateDestinationTransition) -> Void
    
    init(closure:Closure) {
        closure(self)
    }
}

public class SwiftyAnimateFadeTransition {
    public var transitionContext: UIViewControllerContextTransitioning!
    public var duration: TimeInterval!
    
    public typealias Closure = (SwiftyAnimateFadeTransition) -> Void
    
    init(closure:Closure) {
        closure(self)
    }
}
