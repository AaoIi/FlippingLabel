# AAFlashingLabel

## Description
AAFlashingLabel is animated label to switch between two text/attributed text according to time intervals.


## Preview Demo
<img src="https://lh6.googleusercontent.com/Y8usWtcgz_3Hlcy8TYvKLef_8tggB0WK3W6XlDEKe_nCe8skerYqyA=w373-h642-p-b1-c0x00999999">

## How to use AAFlashingLabel ##
##### 1) import ```AAFlashingLabel.swift``` into your project <br/>
#####2) Drag UILabel in Storyboard and from identity inspector change class to : AAFlashingLabel <br/>
#####3) To Start Blinking Label:<br/><br/>     3.1) Normal Text:<br/>

``// send first text, second text, and time between switching``</br>
``myLabel.startFlippingLabels(label1Text:String,label2Text:String,duration:NSTimeInterval)``</br>

##### 3.2) Attributed Text:<br/> 

``// send first attributed text, second attributed text, and time between switching``</br>
``myLabel.startFlippingLabels(label1AttributedText:NSMutableAttributedString,label2AttributedText:NSMutableAttributedString,duration:NSTimeInterval)``</br>


##### 3) Stop Blinking Labels:<br/> 

``myLabel.stopFlippingLabels()``<br/> 


## Requierments ##
* Swift 2.2+
* IOS 7.0+

## License ##

The MIT License (MIT)

Copyright (c) AaoIi 2016

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
