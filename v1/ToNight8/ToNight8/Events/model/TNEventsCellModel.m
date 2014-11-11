//
//  TNEventsCellModel.m
//  ToNight8
//
//  Created by yoloxigu on 14/11/8.
//  Copyright (c) 2014年 com.tonight8.com. All rights reserved.
//

#import "TNEventsCellModel.h"

@implementation TNEventsCellModel


+ (instancetype)eventWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
};

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self == [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
};
@end
