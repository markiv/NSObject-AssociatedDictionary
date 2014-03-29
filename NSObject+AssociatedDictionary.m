//
//  NSObject+AssociatedDictionary.m
//
//  Created by Vikram Kriplaney on 28/03/14.
//  Copyright (c) 2014 iPhonso GmbH. All rights reserved.
//

#import "NSObject+AssociatedDictionary.h"
#import <objc/runtime.h>

@implementation NSObject (AssociatedDictionary)
@dynamic properties;

static const char *kAssociatedDictionaryKey = "AssociatedDictionary";

- (NSMutableDictionary *)properties
{
    NSMutableDictionary *properties = objc_getAssociatedObject(self, kAssociatedDictionaryKey);
    if (!properties) {
        properties = [NSMutableDictionary dictionaryWithCapacity:4];
        objc_setAssociatedObject(self, kAssociatedDictionaryKey, properties, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return properties;
}
@end
