//
//  DogSingleton.h
//  SingletonDemo1
//
//  Created by tennyxu on 06/08/2017.
//  Copyright © 2017 tennyxu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DogSingleton : NSObject <NSCopying>
+ (instancetype) shareInstance;

@property(strong, nonatomic) NSString *name;
@property(nonatomic) int age;

- (NSString *)description;

@end
