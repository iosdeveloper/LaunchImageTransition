//
//  LaunchImageTransition.m
//  Created by http://github.com/iosdeveloper
//

#import "LaunchImageTransition.h"

@implementation LaunchImageTransition

- (id)initWithViewController:(UIViewController *)controller animation:(UIModalTransitionStyle)transition {
	return [self initWithViewController:controller animation:transition delay:0.0];
}

- (id)initWithViewController:(UIViewController *)controller animation:(UIModalTransitionStyle)transition delay:(NSTimeInterval)seconds {
	self = [super init];
	
	if (self) {
		NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
		
		NSString *launchImageFile = [infoDictionary objectForKey:@"UILaunchImageFile"];
		
		NSString *launchImageFileiPhone = [infoDictionary objectForKey:@"UILaunchImageFile~iphone"];
		
		if (launchImageFile != nil) {
			[self.view addSubview:[[[UIImageView alloc] initWithImage:[UIImage imageNamed:launchImageFile]] autorelease]];
		} else if (launchImageFileiPhone != nil) {
			[self.view addSubview:[[[UIImageView alloc] initWithImage:[UIImage imageNamed:launchImageFileiPhone]] autorelease]];
		} else {
			[self.view addSubview:[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Default.png"]] autorelease]];
		}
		
		[controller setModalTransitionStyle:transition];
		
		[NSTimer scheduledTimerWithTimeInterval:seconds target:self selector:@selector(timerFireMethod:) userInfo:controller repeats:NO];
	}
	
	return self;
}

- (void)timerFireMethod:(NSTimer *)theTimer {
	[self presentModalViewController:[theTimer userInfo] animated:YES];
}

@end