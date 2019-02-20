# ActivityNavigationItem

_UINavigationItem subclass that indicates activity with UIActivityIndicator for right and left  bar button items._

![Platform iOS](https://img.shields.io/badge/platform-iOS-blue.svg)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/ActivityNavigationItem.svg)](https://cocoapods.org/pods/ActivityNavigationItem)
[![MIT license](http://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/longhorn499/ActivityNavigationItem/raw/master/LICENSE.md)


## Description

A UINavigationItem subclass you can use to easily animate loading on either side. 

- Useful for indicating activity with system "Save" or "Done" bar buttons
- Common in iOS UI/UX design when tapping a bar button saves or loads information

<img src="https://raw.githubusercontent.com/longhorn499/ActivityNavigationItem/master/Screenshots/Animating.gif"/>

## Installation

With [CocoaPods](https://cocoapods.org), add ActivityNavigationItem to your Podfile:

```
pod 'ActivityNavigationItem'
```

Then install with `pod install`.

Or you can manually import the files from the Source folder.


## Usage

If you're using a Storyboard, set the name of the Class and Module, then create an outlet:

``` swift
@IBOutlet weak var activityNavigationItem: ActivityNavigationItem!
```

Or set up programmatically:

``` swift
let activityNavigationItem = ActivityNavigationItem(title: "Edit Profile", indicatorStyle: .white)
```


Start animating side:

``` swift
activityNavigationItem.startAnimating(.right)
```

Stop animating:

``` swift
activityNavigationItem.stopAnimating(.right)
```


## Configuration

Changing the activity indicator style  (default style is `gray`):

````swift
activityNavigationItem.indicatorStyle = .white
````

Changing the activity indicator color (can also update in Storyboard):

````swift
activityNavigationItem.indicatorColor = .blue
````

## Requirements

Written in Swift 4.0, requires iOS 10.0 and above, Xcode 9.0 and above.


## Credits

Created by [Kevin Johnson](http://www.johnsonkevin.com).


## License

Available under the MIT license. See the LICENSE file for more info.
