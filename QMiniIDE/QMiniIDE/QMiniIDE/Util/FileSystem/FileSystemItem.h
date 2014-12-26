//
//  FileSystemItem.h
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 26..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileSystemItem : NSObject
{
    NSString *relativePath;
    NSString *rootPath;
    FileSystemItem *parent;
    NSMutableArray *children;
}

+ (FileSystemItem *)rootItem : (NSString*) path;
- (NSInteger)numberOfChildren;// Returns -1 for leaf nodes
- (FileSystemItem *)childAtIndex:(NSUInteger)n; // Invalid to call on leaf nodes
- (NSString *)fullPath;
- (NSString *)relativePath;

@end
