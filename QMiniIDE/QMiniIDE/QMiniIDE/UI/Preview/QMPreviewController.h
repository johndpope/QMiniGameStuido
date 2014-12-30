//
//  QMPreviewController.h
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 1..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class QMPreviewer;

@interface QMPreviewController : NSViewController

@property (strong, nonatomic) QMPreviewer* previewer;


- (void) onProjectItemSelected:(NSNotification *) notification;

@end
