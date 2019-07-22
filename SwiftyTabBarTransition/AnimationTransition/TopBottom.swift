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
    
    private lazy var posAffine: CGAffineTransform = {
        return CGAffineTransform(translationX: 0,
                                 y: +UIScreen.main.bounds.height)
    }()
    
    private lazy var negAffine: CGAffineTransform = {
        return CGAffineTransform(translationX: 0,
                                 y: -UIScreen.main.bounds.height)
    }()
    
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
                options.destinationTransform = negAffine
                options.originTransform = posAffine
            } else {
                options.destinationTransform = posAffine
                options.originTransform = negAffine
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
