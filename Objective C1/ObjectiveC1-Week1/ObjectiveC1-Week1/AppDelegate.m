//
//  AppDelegate.m
//  ObjectiveC1-Week1
//
//  Created by Alan Gonzalez on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //float int conversion
    float floatCanons = 10;
    int intCanons = (int)floatCanons;
    
    NSLog(@"The pirates had %f canon's or %d canon's if you want to be techinal.... Garrrhh", floatCanons, intCanons);
    
    //float int and bool requirement
    float pirateOneHeight = 5.2;
    float pirateTwoHeight = 6.4;
    
    int pirateOneEyes = 2;
    int pirateTwoEyes = 1;
    
    BOOL pirateOneCanRead = YES;
    BOOL pirateTwoCanRead = NO;
    
    //if else statement and the "and" "or" comparisons
    if (pirateOneHeight > pirateTwoHeight || (pirateOneEyes > pirateTwoEyes && pirateOneCanRead)) {
        NSLog(@"Pirate One is probably more likely to be able to head the canon operation because he can read and he has two eyes, the height is a disadvantage, but he will be less likely to get his eye blown out like pirate two if he can read the directions");
    }else if(pirateTwoHeight > pirateOneHeight){
        NSLog(@"Pirate two has the whole package. He is tall and can read and has two eyes. He should definately head the canon operations! Garrhh.");
    }
    
    //for loop
    NSLog(@"Which pirates will volunteer to help man the canons?");
    for (int i = 3; i <= 10; i++) {
        NSLog(@"Pirate %d Volunteers!", i);
    }
    
    //Neste for loops;
    NSLog(@"Do all of you pirates have all of your eyes?");
    for (int i = 1; i <= 10; i++) {
        for (int n = 1; n <= 2; n++) {
            if (i == 2){
                if (n == 1){
                    NSLog(@"umm %d", n);
                }else {
                    NSLog(@"Ummm I'm pirate %d and... nope, just one", i);
                }
            }else{
                NSLog(@"umm %d", n);
                if (n == 2) {
                    NSLog(@"Im pirate %d and I got %d eyes!!! GArhhhh", i, n);
                }
            }
        }
    }
    
    //wile loop
    NSLog(@"OK well we will be sailing in 10 seconds so here's a break!");
    int count = 1;
    while (count <= 10) {
        NSLog(@"%d", count);
        count++;
    }
    NSLog(@"Garhh harharharharhahaha... There's your break! Now get to work!");
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
