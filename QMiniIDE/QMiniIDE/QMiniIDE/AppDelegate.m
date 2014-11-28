//
//  AppDelegate.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 11. 28..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import "AppDelegate.h"
#import "QMAboutWindow.h"
#import "QMMainViewController.h"


@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.mainViewController = [[QMMainViewController alloc] initWithNibName:@"QMMainViewController" bundle:nil];
    
    [self.window.contentView addSubview:self.mainViewController.view];
    self.mainViewController.view.frame = ((NSView*)self.window.contentView).bounds;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(IBAction)menuAbout:(id)sender
{
    NSLog(@"menuAbout");
    if(![self aboutWindow])
    {
        [self setAboutWindow:[[QMAboutWindow alloc] initWithWindowNibName:@"QMAbout"]];
    }
    [[[self aboutWindow] window] makeKeyAndOrderFront:self];
    
}

@end
