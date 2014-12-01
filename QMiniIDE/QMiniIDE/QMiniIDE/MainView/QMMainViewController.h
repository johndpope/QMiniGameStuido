//
//  MainViewController.h
//  QMiniIDE
//
//  Created by st13892 on 2014. 11. 28..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class QMResourceController;


@interface QMMainViewController : NSWindowController

// other views
@property (nonatomic, strong) QMResourceController* resourceController;

- (IBAction)Test:(id)sender;

@end
