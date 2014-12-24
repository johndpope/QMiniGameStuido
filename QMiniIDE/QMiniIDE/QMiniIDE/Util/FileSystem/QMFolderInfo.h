//
//  QMFolderInfo.h
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 24..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//
//  GCFolderBrowser
//  http://apptree.net/gcfolderbrowser.htm


#import <Foundation/Foundation.h>

@interface QMFolderInfo : NSObject
{
    NSString*		mPath;
    NSArray*	mSubfolders;
}

-(NSString*)	path;
-(NSArray*)		subFolders;
-(NSUInteger)	valence;

@end
