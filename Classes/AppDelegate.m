//
//  AppDelegate.m
//  Created by http://github.com/iosdeveloper
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "LaunchImageTransition.h"

@implementation AppDelegate

@synthesize window;
@synthesize viewController;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	//self.window.rootViewController = [[[LaunchImageTransition alloc] initWithViewController:self.viewController animation:UIModalTransitionStyleFlipHorizontal] autorelease];
	self.window.rootViewController = [[[LaunchImageTransition alloc] initWithViewController:self.viewController animation:UIModalTransitionStyleCrossDissolve] autorelease];
	//self.window.rootViewController = [[[LaunchImageTransition alloc] initWithViewController:self.viewController animation:UIModalTransitionStyleFlipHorizontal delay:1.0] autorelease];
	//self.window.rootViewController = [[[LaunchImageTransition alloc] initWithViewController:self.viewController animation:UIModalTransitionStyleCrossDissolve delay:1.0] autorelease];
	[self.window makeKeyAndVisible];
	
	return YES;
}

#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[viewController release];
	[window release];
	
	[super dealloc];
}

@end