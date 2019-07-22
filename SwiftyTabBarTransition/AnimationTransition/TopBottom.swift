//
//  TopBottom.swift
//  SwiftyTabBarTransition
//
//  Created by shndrs on 7/22/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

final public class TopBottom: NSObject {
    
    private var isItTTB:Bool!
    private var transition:SwiftyTabBarTransitionOptions!
    
    public init(transition:SwiftyTabBarTransitionOptions, isItTTB:Bool) {
        self.transition = transition
        self.isItTTB = isItTTB
    }
}

// MARK: UIViewControllerAnimatedTransitioning Impelementation

extension TopBottom: UIViewControllerAnimatedTransitioning {
    
    public func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let object = SwiftyAnimateTransition { (options) in
            if isItTTB {
                options.destinationTransform = CGAffineTransform(translationX: 0,
                                                                 y: -UIScreen.main.bounds.height)
                options.originTransform = CGAffineTransform(translationX: 0,
                                                            y: +UIScreen.main.bounds.height)
            } else {
                options.destinationTransform = CGAffineTransform(translationX: 0,
                                                                 y: +UIScreen.main.bounds.height)
                options.originTransform = CGAffineTransform(translationX: 0,
                                                            y: -UIScreen.main.bounds.height)
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


