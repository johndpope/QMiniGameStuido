//
//  QMPreviewController.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 1..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import "QMPreviewController.h"
#import "NSView+BackgroundColor.h"
#import "QMPreviewer.h"

@interface QMPreviewController ()

- (void) initNotification;
@end

@implementation QMPreviewController

- (void)awakeFromNib
{
    
    NSColor *semiTransparentBlue =
    [NSColor colorWithDeviceRed:0.0 green:1.0 blue:0.0 alpha:0.5];
    
    _previewer = (QMPreviewer*)[self view];
    //[[self view] setBackgroundColor:semiTransparentBlue];
    [self initNotification];
}

- (void) initNotification
{
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter addObserver:self selector:@selector(onProjectItemSelected:)
                               name:@"NF_PROJECT_ITEM_SELECT"
                             object:nil];
}

#pragma -
#pragma notification handler
- (void) onProjectItemSelected:(NSNotification *) notification
{
#ifdef QM_DEBUG
    NSLog(@"onProjectItemSelected %@", [notification object]);
#endif
    NSString* path = [notification object];
    [_previewer setImagePath:path];
    [_previewer redraw];
    
    NSImage *theImage = [[NSImage alloc] initWithContentsOfFile:path];
    NSLog(@"Image = %@", theImage);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

@end
