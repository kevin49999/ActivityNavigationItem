# ActivityNavigationItem

![Platform iOS](https://img.shields.io/badge/platform-iOS-blue.svg)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/ActivityNavigationItem.svg)](https://cocoapods.org/pods/ActivityNavigationItem)
[![MIT license](http://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/longhorn499/ActivityNavigationItem/raw/master/LICENSE.md)

## Description

- Useful for indicating activity with system "Save" or "Done" `UIBarButtonItem`
- Common in iOS UI/UX design when tapping a bar button saves or loads data

<img src="https://raw.githubusercontent.com/longhorn499/ActivityNavigationItem/master/Screenshots/Animating.gif"/>

## Installation

### [Swift Package Manager](https://swift.org/package-manager/) 

In Xcode go to `File` -> `Swift Packages` -> `Add Package Dependency` and paste the url for this repo: `https://github.com/longhorn499/ActivityNavigationItem`.

### [CocoaPods](https://cocoapods.org) 

Add ActivityNavigationItem to your Podfile:

```
pod 'ActivityNavigationItem'
```

and run `pod install`

### Manual

Or you can manually add `ActivityNavigationItem.swift` from the `Source` folder

## Usage

``` swift
  var activityNavigationItem = ActivityNavigationItem(navigationItem: controller.navigationItem)
  
  activityNavigationItem.startAnimatingRight()
  ...
  activityNavigationItem.stopAnimatingRight()
```

## Requirements

Written in Swift 5.0, requires iOS 13.0 and above, Xcode 11.2 and above.

## Credits

Created by [Kevin Johnson](http://www.johnsonkevin.com) 🤠

## License

Available under the MIT license. See the LICENSE file for more info.
