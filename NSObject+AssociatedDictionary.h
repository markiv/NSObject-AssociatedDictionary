//
//  NSObject+AssociatedDictionary.h
//
//  Created by Vikram Kriplaney on 28/03/14.
//  Copyright (c) 2014 iPhonso GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AssociatedDictionary)
/// A mutable dictionary for arbitrary, ad-hoc properties that are associated with and retained by this object.
@property (readonly, nonatomic) NSMutableDictionary *properties;
@end
