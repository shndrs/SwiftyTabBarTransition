//
//  LeftRight.swift
//  SwiftyTabBarTransition
//
//  Created by shndrs on 7/22/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class LeftRight: NSObject {
    
    private var isItLTR:Bool!
    private var transition:SwiftyTabBarTransitionOptions!
    
    public init(transition:SwiftyTabBarTransitionOptions, isItLTR:Bool) {
        self.transition = transition
        self.isItLTR = isItLTR
    }
}

// MARK: UIViewControllerAnimatedTransitioning Impelementation

extension LeftRight: UIViewControllerAnimatedTransitioning {
    
    public func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let object = SwiftyAnimateTransition { (options) in
            
            if isItLTR {
                options.destinationTransform =
                    CGAffineTransform(translationX: -UIScreen.main.bounds.width, y: 0)
                options.originTransform =
                    CGAffineTransform(translationX: +UIScreen.main.bounds.width, y: 0)
            } else {
                options.destinationTransform =
                    CGAffineTransform(translationX: +UIScreen.main.bounds.width, y: 0)
                options.originTransform =
                    CGAffineTransform(translationX: -UIScreen.main.bounds.width, y: 0)
            }
            
            options.duration = transitionDuration(using: transitionContext)
            options.transitionContext = transitionContext
        }
        SwiftyAnimator.transition(with: object)
    }
    
    public func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return self.transition.duration
    }
}

