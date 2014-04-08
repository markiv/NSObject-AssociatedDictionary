NSObject+AssociatedDictionary
=============================

A light-weight Objective-C category that adds a mutable dictionary for arbitrary, ad-hoc properties that can be associated with any object. The dictionary, called `properties`, is created just-in-time (the first time it's accessed).

For any object, you can now set an ad-hoc property without prior declaration:

    self.properties[@"someKey"] = someObject;

Ever wished you could attach an object to a standard class _without subclassing_? Now you can:

    UIButton *deleteButton;
    UITextField *accountField;
    :
    deleteButton.properties[@"confirmationMessage"] = @"Are you sure you want to do this?";
    accountField.properties[@"inputMask"] = @"99-99999-9";
    
## Installation

Install via [Cocoapods](http://cocoapods.org/). Here's a sample `Podfile`:

    pod 'NSObject+AssociatedDictionary'

Alternatively, just drop the two files (`NSObject+AssociatedDictionary.m` and `NSObject+AssociatedDictionary.h`) into your project tree.

Don't forget to import the header:

    #import <NSObject+AssociatedDictionary.h>
