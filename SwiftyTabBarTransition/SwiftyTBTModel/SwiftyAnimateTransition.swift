//
//  SwiftyAnimateTransition.swift
//  SwiftyTabBarTransition
//
//  Created by shndrs on 5/25/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

import Foundation

public enum SwiftyTabBarAnimations {
    case scaleX
    case scaleY
    case scaleInXY
    case scaleOutXY
    case rightToLeft
    case leftToRight
    case topToBottom
    case bottomToTop
    case fade
    case topLeftToBottomRight
    case bottomLeftToTopRight
}

@requires_stored_property_inits
public class SwiftyTabBarTransitionOptions {
    
    public private(set) var duration:TimeInterval = 0.25
    public private(set) var animationOption:SwiftyTabBarAnimations = .leftToRight
    
    public required init() {}
    
    init(duration:TimeInterval, animationOption:SwiftyTabBarAnimations) {
        self.duration = duration
        self.animationOption = animationOption
    }
}


