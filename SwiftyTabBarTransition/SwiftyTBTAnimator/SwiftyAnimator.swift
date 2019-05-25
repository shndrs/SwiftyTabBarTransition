//
//  SwiftyAnimator.swift
//  SwiftyTabBarTransition
//
//  Created by shndrs on 5/25/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import UIKit

public struct SwiftyAnimator {
    
    private init() {}
    
    public static func transitionFade(with object: SwiftyAnimateFadeTransition) {
        
        guard let destination = object.transitionContext.view(forKey: UITransitionContextViewKey.to) else { return }
        
        destination.alpha = 0.0
        
        object.transitionContext.containerView.addSubview(destination)
        
        UIView.animate(withDuration: object.duration, delay: 0, options: .curveEaseOut, animations: {
            
            destination.alpha = 1.0
        }) { (success) in
            object.transitionContext.completeTransition(success)
        }
    }
    
    public static func transitionDestination(with object: SwiftyAnimateDestinationTransition) {
        
        guard let destination = object.transitionContext.view(forKey: UITransitionContextViewKey.to) else { return }
        
        destination.alpha = 0.0
        destination.transform = object.destinationTransform
        
        object.transitionContext.containerView.addSubview(destination)
        
        UIView.animate(withDuration: object.duration, delay: 0, options: .curveEaseOut, animations: {
            
            destination.alpha = 1.0
            destination.transform = .identity
            
        }) { (success) in
            object.transitionContext.completeTransition(success)
        }
    }
    
    public static func transition(with object: SwiftyAnimateTransition) {
        
        guard let origin = object.transitionContext.view(forKey: .from) else { return }
        guard let destination = object.transitionContext.view(forKey: UITransitionContextViewKey.to) else { return }
        
        origin.transform = .identity
        destination.transform = object.destinationTransform
        
        object.transitionContext.containerView.addSubview(origin)
        object.transitionContext.containerView.addSubview(destination)
        
        UIView.animate(withDuration: object.duration, delay: 0, options: .curveEaseInOut, animations: {
            
            origin.transform = object.originTransform
            destination.transform = .identity
            
        }) { (success) in
            origin.transform = .identity
            object.transitionContext.completeTransition(success)
        }
    }
}

