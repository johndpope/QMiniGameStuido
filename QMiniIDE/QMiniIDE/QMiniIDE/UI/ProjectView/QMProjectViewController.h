//
//  QMResourceController.h
//  QMiniIDE
//
//  Created by st13892 on 2014. 11. 28..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface QMProjectViewController : NSViewController<NSOutlineViewDataSource>
{

    NSString*                   mRootPath;
}

@property (strong) IBOutlet NSOutlineView *projectTree;


@end
