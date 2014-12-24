//
//  QMFolderInfo.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 24..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "QMFolderInfo.h"

@implementation QMFolderInfo


-(NSString*)	path
{
    return mPath;
}

-(NSArray*)		subFolders
{
    if (mSubfolders == nil)
    {
        NSError *error;
        mSubfolders = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:[self path] error:&error];
                              
    }
    
    return mSubfolders;
}

-(NSUInteger)		valence
{
    return [[self subFolders] count];
}

@end
