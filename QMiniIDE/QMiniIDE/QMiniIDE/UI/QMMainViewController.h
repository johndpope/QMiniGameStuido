//
//  MainViewController.h
//  QMiniIDE
//
//  Created by st13892 on 2014. 11. 28..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class QMProjectViewController;
@class QMPreviewController;

@interface QMMainViewController : NSWindowController

// other views
@property (nonatomic, strong) QMProjectViewController* resourceController;
@property (nonatomic, strong) QMPreviewController* previewController;
@property (strong) IBOutlet NSSplitView *mainSplitView;

- (IBAction)Test:(id)sender;

@end
