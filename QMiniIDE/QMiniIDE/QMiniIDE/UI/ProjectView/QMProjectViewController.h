//
//  QMResourceController.h
//  QMiniIDE
//
//  Created by st13892 on 2014. 11. 28..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class QMFolderInfo;

@interface QMProjectViewController : NSViewController<NSOutlineViewDataSource>
{
    QMFolderInfo*				mRootInfo;
}

@property (strong) IBOutlet NSOutlineView *projectTree;


- (NSArray*)		sortedFoldersOfItem:(QMFolderInfo*) fi usingSortDescriptors:(NSArray*) sortDescriptors;

@end
