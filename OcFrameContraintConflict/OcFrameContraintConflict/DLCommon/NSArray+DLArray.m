//
//  NSArray+DLArray.m
//
//  Created by NowOrNever on 01/03/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import "NSArray+DLArray.h"
#import "NSObject+DLKVC_DictToProperty.h"

@implementation NSArray (DLArray)

- (NSString *)descriptionWithLocale:(id)locale{
    NSMutableString *mStr = [NSMutableString string];
    [mStr appendString:@"(\n"];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (idx == self.count - 1) {
            [mStr appendFormat:@"\t%@\n",obj];
        }else{
            [mStr appendFormat:@"\t%@,\n",obj];
        }
    }];
    [mStr appendString:@")\n"];
    return mStr.copy;
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
