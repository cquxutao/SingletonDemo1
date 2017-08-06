//
//  DogSingleton.m
//  SingletonDemo1
//
//  Created by tennyxu on 06/08/2017.
//  Copyright © 2017 tennyxu. All rights reserved.
//

#import "DogSingleton.h"

static DogSingleton * _dogSingleton = nil;


@implementation DogSingleton

+ (instancetype) shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dogSingleton = [[self alloc] init];
        _dogSingleton.name = [[NSString alloc] init];
        _dogSingleton.age = 1;
    });
    return _dogSingleton;
}
+ (instancetype) allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dogSingleton = [super allocWithZone:zone];
    });
    return _dogSingleton;
}
- (id)copyWithZone:(NSZone *)zone {
    return _dogSingleton = [DogSingleton shareInstance];
}
- (NSString *)description {
    NSString *result = [NSString stringWithFormat:@"<%@ : %p>\n%@>",[self class],self,@{@"name":_name,@"age":@(_age)}];
    return result;
}

@end
