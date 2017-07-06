//
//  NSObject+DLKVC_DictToProperty.h
//
//  Created by NowOrNever on 04/01/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (DLKVC_DictToProperty)
- (instancetype)dictToPropertyWithDict:(NSDictionary *)dict;
+ (instancetype)createObjectWithDict:(NSDictionary *)dict;
- (instancetype)dl_dictToPropertyWithDict:(NSDictionary *)dict;
+ (instancetype)dl_CreateObjectWithDict:(NSDictionary *)dict;

@end
