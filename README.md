NSObject+AssociatedDictionary
=============================

A light-weight Objective-C category that adds a mutable dictionary for arbitrary, ad-hoc properties that can be associated with any object. The dictionary, called ``properties``, is created just-in-time (the first time it's accessed).

For any object, you can now set an ad-hoc property without prior declaration:

    self.properties[@"someKey"] = someObject;

Ever wished you could do this without subclassing? Now you can:

    myButton.properties[@"confirmationMessage"] = @"Are you sure you want to do this?";

   Installation
   ---
   Install via [Cocoapods](http://cocoapods.org/). Here's a sample ``Podfile``:

    pod 'NSObject+AssociatedDictionary'

Alternatively, just copy the two files into your project tree.
