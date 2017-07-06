//
//  NSArray+DLClassArrayFromPlist.m
//
//  Created by NowOrNever on 04/01/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import "NSArray+DLClassArrayFromPlist.h"
#import "NSObject+DLKVC_DictToProperty.h"

@implementation NSArray (DLClassArrayFromPlist)

+ (NSArray *)plistToClassWithPlistName:(NSString *)plistName andClassName:(NSString *)className{
    NSURL *plistUrl = [[NSBundle mainBundle]URLForResource:plistName withExtension:nil];
    NSArray *tempArray = [NSArray arrayWithContentsOfURL:plistUrl];
    NSMutableArray *targetArray = [[NSMutableArray alloc]init];
    Class ModelClass = NSClassFromString(className);
    for (NSDictionary * dict in tempArray) {
        [targetArray addObject:[ModelClass createObjectWithDict:dict]];
    }
    return targetArray.copy;
}

+ (NSArray *)dl_plistToClassWithPlistName:(NSString *)plistName andClassName:(NSString *)className{
    NSURL *plistUrl = [[NSBundle mainBundle]URLForResource:plistName withExtension:nil];
    NSArray *tempArray = [NSArray arrayWithContentsOfURL:plistUrl];
    NSMutableArray *targetArray = [[NSMutableArray alloc]init];
    Class ModelClass = NSClassFromString(className);
    for (NSDictionary * dict in tempArray) {
        [targetArray addObject:[ModelClass createObjectWithDict:dict]];
    }
    return targetArray.copy;
}

@end
