# ActivityIndicatingNavigationItem

_UINavigationItem subclass that indicates activity with UIActivityIndicator for right and left  bar button items._

![Platform iOS](https://img.shields.io/badge/platform-iOS-blue.svg)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/ActivityIndicatingNavigationItem.svg)](https://cocoapods.org/pods/ActivityIndicatingNavigationItem)
[![MIT license](http://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/longhorn499/ActivityIndicatingNavigationItem/raw/master/LICENSE.md)


## Description

UINavigationItem subclass you can use to show activity indicators in the left/right sides and then revert back to your preset bar button items. 
- Helpful for indicating activity with Save/Done bar button items 
- Common in iOS UI/UX design for edit profile screens, save avatar screens, etc.

<img src="https://raw.githubusercontent.com/longhorn499/ActivityIndicatingNavigationItem/master/Screenshots/Screenshot.png" width="375px" height="667px"/>

## Installation

With [CocoaPods](https://cocoapods.org), add ActivityIndicatingNavigationItem to your Podfile:

```
pod 'ActivityIndicatingNavigationItem'
```

Then install with `pod install`.

Or you can manually import the files from the Source folder.


## Usage

If you're using a Storyboard, set the name of the class and create an outlet:

``` swift
@IBOutlet weak var activityIndicatingNavigationItem: ActivityIndicatingNavigationItem!
```

Or set up programmatically:

``` swift
let animating = ActivityIndicatingNavigationItem.init(title: "Title", indicatorStyle: .white)
```


Start animating side:

``` swift
activityIndicatingNavigationItem.startAnimating(.right)
```

Stop animating:

``` swift
activityIndicatingNavigationItem.stopAnimating(.right)
```

Changing the style (default style is `gray`):

````swift
activityIndicatingNavigationItem.indicatorStyle = .white
````


## Requirements

Written in Swift 4.0, requires iOS 10.3 and above, Xcode 9.0 and above.


## Credits

Created by [Kevin Johnson](http://www.johnsonkevin.com).


## License

Available under the MIT license. See the LICENSE file for more info.
