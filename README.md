# SwiftyTabBarTransition

![swift-version](https://img.shields.io/badge/Swift-4.2-blueviolet.svg)
[![License](https://img.shields.io/cocoapods/l/SwiftyTabBarTransition.svg?colorB=blue)](https://cocoapods.org/pods/SwiftyTabBarTransition)
[![Version](https://img.shields.io/cocoapods/v/SwiftyTabBarTransition.svg?style=flat)](https://cocoapods.org/pods/SwiftyTabBarTransition)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyTabBarTransition.svg?style=flat)](https://cocoapods.org/pods/SwiftyTabBarTransition)


<img src="https://raw.githubusercontent.com/CocoaPods/shared_resources/master/img/CocoaPods-Logo-Highlight.png" width="128px" height="32px" />

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

How to use
=======

For enjoy this framework you have three simple steps:

### Step 1

<p>Let's import SwiftyTabBarTransition first</p>

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
create an object of `SwiftyTabBarTransitionOptions`. This class has 2 peroperties:
<p>The first property is</p>

*    duration
<p>Which is the duration of our transition
    
<p>The second property is</p>

*    animationOption
<p>which is the style of you transition animation</p>

| animationOption  | 
| ------------- |     
| .scaleX   |
| .scaleY  |
| .scaleInXY  |
| .scaleOutXY  |
| .rightToLeft  |
| .leftToRight  |
| .topToBottom  |
| .bottomToTop  |
| .fade  |
| .topLeftToBottomRight  |
| .bottomLeftToTopRight  |


Requirements
=======

<p>iOS 9.3+</p>
<p>Xcode 10.1</p>  
<p>Swift 4.2</p>

Installation
=======

SwiftyTabBarTransition is available through [CocoaPods](https://cocoapods.org/pods/SwiftyTabBarTransition). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftyTabBarTransition'
```

Author
=======
sahandraeisi1994@gmail.com, sahandraeisi@yahoo.com

License
=======

SwiftyTabBarTransition is available under the MIT license. See the LICENSE file for more info.
