//
//  QMPreviewController.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 1..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import "QMPreviewController.h"
#import "NSView+BackgroundColor.h"

@interface QMPreviewController ()

@end

@implementation QMPreviewController

- (void)awakeFromNib
{
    
    NSColor *semiTransparentBlue =
    [NSColor colorWithDeviceRed:0.0 green:1.0 blue:0.0 alpha:0.5];
    
    //[[self view] setBackgroundColor:semiTransparentBlue];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

@end
