//
//  QMResourceController.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 11. 28..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import "QMResourceController.h"
#import "NSView+BackgroundColor.h"

@interface QMResourceController ()

@end

@implementation QMResourceController

- (void)awakeFromNib
{

    NSColor *semiTransparentBlue =
    [NSColor colorWithDeviceRed:0.0 green:0.0 blue:1.0 alpha:0.5];
    
    [[self view] setBackgroundColor:semiTransparentBlue];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

@end
