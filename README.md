# SwiftyTabBarTransition
![SwiftyTabBarTransition](https://user-images.githubusercontent.com/34839080/58377912-699dfd00-7f9f-11e9-9763-1b684947e8d6.png)
![swift-version](https://img.shields.io/badge/Swift-4.2-blueviolet.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/SwiftyTabBarTransition.svg?colorB=green)](https://cocoapods.org/pods/SwiftyTabBarTransition)
[![Version](https://img.shields.io/cocoapods/v/SwiftyTabBarTransition.svg?style=flat)](https://cocoapods.org/pods/SwiftyTabBarTransition)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyTabBarTransition.svg?style=flat)](https://cocoapods.org/pods/SwiftyTabBarTransition)


<img src="https://raw.githubusercontent.com/Carthage/Carthage/master/Logo/PNG/colored.png" width="32px" height="32px" /> <img src="https://raw.githubusercontent.com/CocoaPods/shared_resources/master/img/CocoaPods-Logo-Highlight.png" width="128px" height="32px" />

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


![leftToRight](https://user-images.githubusercontent.com/34839080/58367838-3143e380-7ef9-11e9-8661-08a35560285e.gif)
![scaleInXY](https://user-images.githubusercontent.com/34839080/58367836-30ab4d00-7ef9-11e9-9609-cc1bc0ce1053.gif)

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
Create an object of `SwiftyTabBarTransitionOptions`. This class has 2 peroperties:

*    duration
<p>Which is the duration of our transition
    
*    animationOption
<p>Which is the style of your transition animation</p>

### Animation Option
It's an `enum` for changing transition animation

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


More Animations
=======


![scaleX](https://user-images.githubusercontent.com/34839080/58367837-3143e380-7ef9-11e9-9493-e7e1a205de47.gif)
![topLeftToBottomRight](https://user-images.githubusercontent.com/34839080/58367861-bf1fce80-7ef9-11e9-8d49-93c9f36ee1de.gif)

Requirements
=======

<p>iOS 9.3+</p>
<p>Xcode 10.1</p>  
<p>Swift 4.2</p>

Installation
=======

*    Cocoapods

SwiftyTabBarTransition is available through [CocoaPods](https://cocoapods.org/pods/SwiftyTabBarTransition). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftyTabBarTransition'
```

* Carthage

To get the latest version of library using Carthage, you can add following line to your Cartfile.

```bash
github "shndrs/SwiftyTabBarTransition"
```


Author
=======
sahandraeisi1994@gmail.com, sahandraeisi@yahoo.com

License
=======

SwiftyTabBarTransition is available under the MIT license. See the LICENSE file for more info.
