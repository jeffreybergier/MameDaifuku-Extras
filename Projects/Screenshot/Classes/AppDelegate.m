//
//  ScreenshotAppDelegate.m
//  Screenshot
//
//  Created by Me on 25/11/23.
//  Copyright __MyCompanyName__ 2025. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize rootVC = _rootVC;


-(void)applicationDidFinishLaunching:(UIApplication*)application;
{ 
	UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	UITabBarController *barVC = [[[UITabBarController alloc] initWithNibName:nil	bundle:nil] autorelease];
	UINavigationController *rootVC = [[UINavigationController alloc] initWithRootViewController:barVC];
	
	[barVC setViewControllers:
	 [NSArray arrayWithObjects:
		[[[UITableViewController alloc] initWithStyle:UITableViewStyleGrouped] autorelease],
		[[[UITableViewController alloc] initWithStyle:UITableViewStyleGrouped] autorelease],
		nil]
	 ];
	
	_rootVC = rootVC;
	_window = window;
	
	NSParameterAssert(_rootVC);
	NSParameterAssert(_window);
	
	[window addSubview:[rootVC view]];
	[window makeKeyAndVisible];
}


-(void)dealloc;
{
	[_rootVC release];
	[_window release];
	[super dealloc];
}


@end
