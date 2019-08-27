# AAFlashingLabel

## Description
FlashingLabel is animated label to switch between two text/attributed text according to time intervals.


## Preview Demo
<img src="https://lh6.googleusercontent.com/Y8usWtcgz_3Hlcy8TYvKLef_8tggB0WK3W6XlDEKe_nCe8skerYqyA=w373-h642-p-b1-c0x00999999">

## Installation

### CocoaPods
[CocoaPods][] is a dependency manager for Cocoa projects. To install FlashingLabel with CocoaPods:

1. Make sure CocoaPods is [installed][CocoaPods Installation].

2. Update your Podfile to include the following:

``` ruby
use_frameworks!
pod 'FlashingLabel'
```

3. Run `pod install`.

[CocoaPods]: https://cocoapods.org
[CocoaPods Installation]: https://guides.cocoapods.org/using/getting-started.html#getting-started

4. In your code import FlashingLabel like so:
`import FlashingLabel`


## How to use AAFlashingLabel ##
##### 1) import FlashingLabel <br/>
##### 2) Drag UILabel in Storyboard and from identity inspector change class to : FlashingLabel <br/>

##### Flipping String<br/>

```swift
// send first text, second text, and time between switching
public func startFlippingText(firstText:String?,secondText:String?,duration:TimeInterval)
```

##### Flipping Attributed String:<br/> 

```swift
// send first attributed text, second attributed text, and time between switching
public func startFlippingText(firstAttributedText:NSMutableAttributedString,secondAttributedText:NSMutableAttributedString,duration:TimeInterval)
```

##### Stop Flipping Label:<br/> 

```swift
public func stopFlippingText()

```
## Requierments ##
* Swift 5.0+
* IOS 8.0+

## License ##

The MIT License (MIT)

Copyright (c) AaoIi 2016

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
