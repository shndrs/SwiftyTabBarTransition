# SwiftyTabBarTransition

![SwiftyTabBarTransition](https://user-images.githubusercontent.com/34839080/58377912-699dfd00-7f9f-11e9-9763-1b684947e8d6.png)
[![codebeat badge](https://codebeat.co/badges/bcd07b05-c07a-46df-9e70-feb06e45f410)](https://codebeat.co/projects/github-com-shndrs-swiftytabbartransition-master)
![swift-version](https://img.shields.io/badge/Swift-5-blueviolet.svg)
[![Version](https://img.shields.io/cocoapods/v/SwiftyTabBarTransition.svg?style=flat)](https://cocoapods.org/pods/SwiftyTabBarTransition)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyTabBarTransition.svg?style=flat)](https://cocoapods.org/pods/SwiftyTabBarTransition)
![License](https://img.shields.io/cocoapods/l/SwiftyTabBarTransition.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-000000.svg?style=flat)](https://github.com/Carthage/Carthage)
![cocoapods](https://img.shields.io/badge/CocoaPods-compatible-000000.svg)



## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


![leftToRight](https://user-images.githubusercontent.com/34839080/58367838-3143e380-7ef9-11e9-8661-08a35560285e.gif)
![scaleInXY](https://user-images.githubusercontent.com/34839080/58367836-30ab4d00-7ef9-11e9-9609-cc1bc0ce1053.gif)

How to use
=======

For enjoy this framework you have three simple steps:

### Step 1

Let's import SwiftyTabBarTransition in top of your `UITabBarController` class first

```Swift
import SwiftyTabBarTransition
```

### Step 2

then in `viewDidLoad()` method of your `UITabBarController`, make `delegate` equal to `self`, pretty simple so far, right?! 😉

```Swift

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
}
```

### Step 3

your `UITabBarController` class, must inherite from `UITabBarControllerDelegate` protocol, so write an extension of your `UITabBarController`, then confirm from `animationControllerForTransitionFrom` method

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
<p>Which is the duration of transition
    
*    animationOption
<p>Which is the style of transition animation</p>

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
<p>Xcode 10.2.1</p>  
<p>Swift 5</p>

Installation
=======


 <img src="https://raw.githubusercontent.com/CocoaPods/shared_resources/master/img/CocoaPods-Logo-Highlight.png" width="128px" height="32px" />

SwiftyTabBarTransition is available through [CocoaPods](https://cocoapods.org/pods/SwiftyTabBarTransition). To install
it in latest version, simply add the following line to your Podfile:

### Swift 4.2

```ruby
pod 'SwiftyTabBarTransition', '~> 1.0.2'
```

### Swift 5.0


```ruby
pod 'SwiftyTabBarTransition', '~> 1.5.3'
```

<img src="https://raw.githubusercontent.com/Carthage/Carthage/master/Logo/PNG/colored.png" width="32px" height="32px" />


To get the latest version of library using Carthage, you can add following line to your Cartfile.

### Swift 4.2

```bash
github "shndrs/SwiftyTabBarTransition" "1.0.2"
```
### Swift 5.0


```bash
github "shndrs/SwiftyTabBarTransition" "1.5.3"
```

Author
=======
sahandraeisi1994@gmail.com, sahandraeisi@yahoo.com, [shndrs](https://linkedin.com/in/shndrs)

License
=======

SwiftyTabBarTransition is available under the MIT license. See the LICENSE file for more info.
