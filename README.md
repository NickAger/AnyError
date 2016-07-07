# AnyError

[![CI Status](http://img.shields.io/travis/Nick Ager/AnyError.svg?style=flat)](https://travis-ci.org/Nick Ager/AnyError)
[![Version](https://img.shields.io/cocoapods/v/AnyError.svg?style=flat)](http://cocoapods.org/pods/AnyError)
[![License](https://img.shields.io/cocoapods/l/AnyError.svg?style=flat)](http://cocoapods.org/pods/AnyError)
[![Platform](https://img.shields.io/cocoapods/p/AnyError.svg?style=flat)](http://cocoapods.org/pods/AnyError)

Swift µframework providing `AnyError(cause:ErrorType)`

Type erasure for ErrorType(s). Designed to be used as the error type associated with a Future or Result - so that when composing futures with map/flatMap the error type is the same and can be propagated through the compositional chain.

* See [Type erasure with AnyError](http://nickager.com/blog/2016/03/07/AnyError)

## Installation

AnyError is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AnyError"
```

## Author

Nick Ager, nick.ager@gmail.com

## License

AnyError is available under the MIT license. See the LICENSE file for more info.
