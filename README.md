NSObject+AssociatedDictionary
=============================

A light-weight Objective-C category that adds a mutable dictionary for arbitrary, ad-hoc properties that can be associated with any object. The dictionary, called `properties`, is created just-in-time (the first time it's accessed).

For any object, you can now set an ad-hoc property without prior declaration:

```objc
self.properties[@"someKey"] = someObject;
```

Ever wished you could attach an object to a standard class _without subclassing_? Now you can:

```objc
#import <NSObject+AssociatedDictionary.h>
:
UIButton *deleteButton;
UITextField *accountField;
:
deleteButton.properties[@"confirmationMessage"] = @"Are you sure you want to do this?";
accountField.properties[@"inputMask"] = @"99-99999-9";
```

You can even set properties like these directly in Xcode's interface builder, using key paths and dot notation:

![Xcode screenshot](https://raw.githubusercontent.com/markiv/NSObject-AssociatedDictionary/master/screenshot1.png)

If `NSObject+AssociatedDictionary.m` is in your project, the UI loader will automatically set the properties for you. Without any additional initialization code, you'll be able to access them like this:

```objc
BOOL required = [accountField.properties[@"required"] boolValue];
```

## Installation

Install via [Cocoapods](http://cocoapods.org/). Here's a sample `Podfile`:

    pod 'NSObject+AssociatedDictionary'

Alternatively, just drop the two files (`NSObject+AssociatedDictionary.m` and `NSObject+AssociatedDictionary.h`) into your project tree.
