//
//  NSArray+DLClassArrayFromPlist.h
//
//  Created by NowOrNever on 04/01/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (DLClassArrayFromPlist)

+ (NSArray *)plistToClassWithPlistName:(NSString *)plistName andClassName:(NSString *)className;
+ (NSArray *)dl_plistToClassWithPlistName:(NSString *)plistName andClassName:(NSString *)className;

@end
