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
    
    NSArray *keys = [database[season] allKeys];
    
    if ([keys containsObject:holiday]) {
        
        return YES;
        
    }
    
    return NO;
    
}


- (BOOL)supply:(NSString *)supply
   isInHoliday:(NSString *)holiday
      inSeason:(NSString *)season
    inDatabase:(NSDictionary *)database {
    
    if ([database[season][holiday] containsObject:supply]) {
        
        return YES;
        
    }
    
    return NO;
    
}


- (NSDictionary *)addHoliday:(NSString *)holiday
                    toSeason:(NSString *)season
                  inDatabase:(NSDictionary *)database {
    
    NSMutableArray *holidayArray = [[NSMutableArray alloc] init];
    
    [database[season] setValue:holidayArray forKey:holiday];
    
    return database;
}


- (NSDictionary *)addSupply:(NSString *)supply
                  toHoliday:(NSString *)holiday
                   inSeason:(NSString *)season
                 inDatabase:(NSDictionary *)database {
    
    [database[season][holiday] addObject:supply];
    return database;
}

@end
