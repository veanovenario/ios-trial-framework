//
//  Utils.h
//  FrameworkTrial
//
//  Created by Vea Novenario on 2/2/17.
//  Copyright © 2017 Vea Novenario. All rights reserved.
//

#import <Foundation/Foundation.h>

//--- Macros ---//

// Debug Logs
//#define DLog(fmt, ...) if (DEBUG) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);

// Hardware
#define isIPhone (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define isIPad (UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPhone)

// iOS Version
#define kOSVersion                              [UIDevice currentDevice].systemVersion
#define osVersionEqualTo(v)                     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define osVersionGreaterThan(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define osVersionGreaterThanOrEqualTo(v)        ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define osVersionLessThan(v)                    ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define osVersionLessThanOrEqualTo(v)           ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

@interface Utils : NSObject

@end
