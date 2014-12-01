//
//  MainViewController.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 11. 28..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//
#import "QMCommonMacro.h"

#import "QMMainViewController.h"
#import "QMResourceController.h"
#import "QMPreviewController.h"

@interface QMMainViewController ()

@end

@implementation QMMainViewController


- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self != nil)
    {

        QM_LOG_CMD_LINE
    }
    
    return self;
}

- (void)awakeFromNib
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    // add other view to window
    [self setResourceController:[[QMResourceController alloc] initWithNibName:@"QMResourceView" bundle:nil]];
    NSView * resourceview = [[self resourceController] view];
    resourceview.frame = CGRectMake(100, 100, resourceview.frame.size.width, resourceview.frame.size.height);
    [self.window.contentView addSubview:resourceview];

    
    // add preview view to window

}

- (IBAction)Test:(id)sender
{
    NSLog(@"QMMainViewController Test");
}
@end
