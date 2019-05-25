# SwiftyTabBarTransition

[![Version](https://img.shields.io/cocoapods/v/SwiftyTabBarTransition.svg?style=flat)](https://cocoapods.org/pods/SwiftyTabBarTransition)
[![License](https://img.shields.io/cocoapods/l/SwiftyTabBarTransition.svg?colorB=green)](https://cocoapods.org/pods/SwiftyTabBarTransition)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyTabBarTransition.svg?style=flat)](https://cocoapods.org/pods/SwiftyTabBarTransition)
![swift-version](https://img.shields.io/badge/Swift-4.2-blueviolet.svg)

<img src="https://raw.githubusercontent.com/CocoaPods/shared_resources/master/img/CocoaPods-Logo-Highlight.png" width="128px" height="32px" />

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

For set this frame work you have three simple steps:

### Step 1

<p>Let's import SwiftyTabBarTransition</p>

```Swift
import SwiftyTabBarTransition

```

### Step 2

in `viewDidLoad()` method of your `UITabBarController`, make `delegate` equal to `self`

```Swift

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
}
```

### Step 3

your `UITabBarController` class, must inherite from `UITabBarControllerDelegate` protocol, then write an extension of your `UITabBarController`, then confirm from `animationControllerForTransitionFrom` method

```Swift

extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        let transitionOptions = SwiftyTabBarTransitionOptions(duration: 0.3, animationOption: .bottomToTop)
        let transition = SwiftyTabBarTransition.set(transition: transitionOptions)
        return transition
    }
}

```
