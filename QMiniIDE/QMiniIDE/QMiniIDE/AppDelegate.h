//
//  AppDelegate.h
//  QMiniIDE
//
//  Created by st13892 on 2014. 11. 28..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class QMMainViewController;
@class QMAboutWindow;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property  (nonatomic, strong) QMMainViewController* mainViewController;
@property (strong) QMAboutWindow* aboutWindow;

-(IBAction)menuAbout:(id)sender;


@end

