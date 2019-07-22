//
//  ScaleInOutXY.swift
//  SwiftyTabBarTransition
//
//  Created by shndrs on 7/22/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class ScaleInOutXY: NSObject {
    
    private var isItIn:Bool!
    private var transition:SwiftyTabBarTransitionOptions!
    
    public init(transition:SwiftyTabBarTransitionOptions, isItIn:Bool) {
        self.transition = transition
        self.isItIn  = isItIn
    }
}

// MARK: UIViewControllerAnimatedTransitioning Impelementation

extension ScaleInOutXY: UIViewControllerAnimatedTransitioning {
    
    public func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let object = SwiftyAnimateDestinationTransition { (options) in
            
            if !isItIn {
                options.destinationTransform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            } else {
                options.destinationTransform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            }
            
            options.duration = transitionDuration(using: transitionContext)
            options.transitionContext = transitionContext
        }
        SwiftyAnimator.transitionDestination(with: object)
    }
    
    public func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return transition.duration
    }
}
