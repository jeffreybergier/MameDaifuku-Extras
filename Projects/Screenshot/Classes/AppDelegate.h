//
//  ScreenshotAppDelegate.h
//  Screenshot
//
//  Created by Me on 25/11/23.
//  Copyright __MyCompanyName__ 2025. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : NSObject <UIApplicationDelegate>
{
	UIWindow *_window;
	UIViewController *_rootVC;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIViewController *rootVC;

@end

