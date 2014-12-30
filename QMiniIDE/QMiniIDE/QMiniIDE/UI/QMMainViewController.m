//
//  MainViewController.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 11. 28..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//
#import "QMCommonMacro.h"

#import "QMMainViewController.h"
#import "QMProjectViewController.h"
#import "QMPreviewController.h"
#import "QMSceneViewController.h"

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
    
    [self setSceneViewController:[[QMSceneViewController alloc] initWithNibName:@"QMSceneViewController" bundle:nil]];
    NSView * resourcevView = [[self resourceController] view];
    resourcevView.frame = CGRectMake(0,0, resourcevView.frame.size.width, resourcevView.frame.size.height);
    [_mainSplitView addSubview:resourcevView];
    
    [self setResourceController:[[QMProjectViewController alloc] initWithNibName:@"QMProjectView" bundle:nil]];
    NSView * resourcevView = [[self resourceController] view];
    resourcevView.frame = CGRectMake(0,0, resourcevView.frame.size.width, resourcevView.frame.size.height);
    [_mainSplitView addSubview:resourcevView];
   
    
    // add preview view to window
    [self setPreviewController:[[QMPreviewController alloc] initWithNibName:@"QMPreviewController" bundle:nil]];
    NSView * previewView = [[self previewController] view];
    previewView.frame = CGRectMake(400, 0, previewView.frame.size.width, previewView.frame.size.height);
    [_mainSplitView addSubview:previewView];
    
   
}

- (IBAction)Test:(id)sender
{
    NSLog(@"QMMainViewController Test");
}
@end
