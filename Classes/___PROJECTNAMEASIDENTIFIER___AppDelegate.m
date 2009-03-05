//
//  ___PROJECTNAMEASIDENTIFIER___AppDelegate.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "___PROJECTNAMEASIDENTIFIER___AppDelegate.h"
#import "cocos2d.h"
#import "MyScene.h"

@implementation ___PROJECTNAMEASIDENTIFIER___AppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	UIWindow *applicationWindow = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	[self setWindow:applicationWindow];
	[applicationWindow release];
	
	[window setMultipleTouchEnabled:YES];
	Director *director = [Director sharedDirector];
	[director setLandscape:YES];
	[director attachInWindow:window];
	[window makeKeyAndVisible];
	[director runWithScene:[MyScene node]];
}

- (void)applicationWillResignActive:(UIApplication *)application {
	[[Director sharedDirector] pause];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
	[[Director sharedDirector] resume];
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
	[[TextureMgr sharedTextureMgr] removeAllTextures];
}

- (void)applicationWillTerminate:(UIApplication *)application {
	[[Director sharedDirector] end];
}

- (void)applicationSignificantTimeChange:(UIApplication *)application {
	[[Director sharedDirector] setNextDeltaTimeZero:YES];
}

- (void)dealloc {
	[[Director sharedDirector] release];
	[window release];
	[super dealloc];
}

@end
