//
//  NSObject+DLKVC_DictToProperty.m
//
//  Created by NowOrNever on 04/01/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import "NSObject+DLKVC_DictToProperty.h"

@implementation NSObject (DLKVC_DictToProperty)

- (instancetype)dictToPropertyWithDict:(NSDictionary *)dict{
    [self setValuesForKeysWithDictionary:dict];
    return self;
}

- (instancetype)dl_dictToPropertyWithDict:(NSDictionary *)dict{
    [self setValuesForKeysWithDictionary:dict];
    return self;
}

+ (instancetype)createObjectWithDict:(NSDictionary *)dict{
    return [[[self alloc]init] dictToPropertyWithDict:dict];
}

+ (instancetype)dl_CreateObjectWithDict:(NSDictionary *)dict{
    return [[[self alloc]init] dl_dictToPropertyWithDict:dict];
}
@end
