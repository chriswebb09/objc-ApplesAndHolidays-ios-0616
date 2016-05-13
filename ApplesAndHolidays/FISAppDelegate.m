//  FISAppDelegate.m


#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSMutableDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

- (NSArray *)pickApplesFromFruits:(NSArray *)fruits {
    NSPredicate *applePredicate = [NSPredicate predicateWithFormat:@"SELF IN %@", @[@"apple"]];
    NSArray *apples = [fruits filteredArrayUsingPredicate:applePredicate];
    return apples;
}


- (NSArray *)holidaysInSeason:(NSString *)season
                   inDatabase:(NSDictionary *)database {
    NSArray *keys = [database[season] allKeys];
    return keys;
    
}

- (NSArray *)suppliesInHoliday:(NSString *)holiday
                      inSeason:(NSString *)season
                    inDatabase:(NSDictionary *)database {
    NSMutableArray *holidays = [[NSMutableArray alloc]init];
    [holidays addObject:database[season][holiday]];
    return holidays[0];
    
}

- (BOOL)holiday:(NSString *)holiday
     isInSeason:(NSString *)season
     inDatabase:(NSDictionary *)database {
    
    return nil;
    
}


- (BOOL)supply:(NSString *)supply
   isInHoliday:(NSString *)holiday
      inSeason:(NSString *)season
    inDatabase:(NSDictionary *)database {
    
    
    return nil;
    
}


- (NSDictionary *)addHoliday:(NSString *)holiday
                    toSeason:(NSString *)season
                  inDatabase:(NSDictionary *)database {
    
    return nil;
    
}


- (NSDictionary *)addSupply:(NSString *)supply
                  toHoliday:(NSString *)holiday
                   inSeason:(NSString *)season
                 inDatabase:(NSDictionary *)database {
    return nil;
}

@end