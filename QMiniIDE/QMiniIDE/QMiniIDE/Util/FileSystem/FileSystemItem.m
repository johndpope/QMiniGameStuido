//
//  FileSystemItem.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 26..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//
//  https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/OutlineView/Articles/UsingOutlineDataSource.html

#import "FileSystemItem.h"

@implementation FileSystemItem

static FileSystemItem *rootItem = nil;
static NSMutableArray *leafNode = nil;

+ (void)initialize {
    if (self == [FileSystemItem class]) {
        leafNode = [[NSMutableArray alloc] init];
    }
}

- (id)initWithPath:(NSString *)path parent:(FileSystemItem *)parentItem {
    self = [super init];
    if (self) {
        relativePath = [[path lastPathComponent] copy];
        rootPath = [path copy];
        parent = parentItem;
    }
    return self;
}


+ (FileSystemItem *)rootItem: (NSString*) path {
    if (rootItem == nil) {
        rootItem = [[FileSystemItem alloc] initWithPath:path parent:nil];
    }
    return rootItem;
}


// Creates, caches, and returns the array of children
// Loads children incrementally
- (NSArray *)children {
    
    if (children == nil) {
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *fullPath = [self fullPath];
        BOOL isDir, valid;
        
        valid = [fileManager fileExistsAtPath:fullPath isDirectory:&isDir];
        
        if (valid && isDir) {
            NSArray *array = [fileManager contentsOfDirectoryAtPath:fullPath error:NULL];
            
            NSUInteger numChildren, i;
            
            numChildren = [array count];
            children = [[NSMutableArray alloc] initWithCapacity:numChildren];
            
            for (i = 0; i < numChildren; i++)
            {
                NSString* path = [array objectAtIndex:i];
                if ([path compare:@".DS_Store"] == NSOrderedSame)
                    continue;
                
                FileSystemItem *newChild = [[FileSystemItem alloc]
                                            initWithPath:path parent:self];
                [children addObject:newChild];
            }
        }
        else {
            children = leafNode;
        }
    }
    return children;
}


- (NSString *)relativePath {
    return relativePath;
}


- (NSString *)fullPath {
    // If no parent, return our own relative path
    if (parent == nil) {
        return rootPath;
    }
    
    // recurse up the hierarchy, prepending each parent’s path
    return [[parent fullPath] stringByAppendingPathComponent:relativePath];
}


- (FileSystemItem *)childAtIndex:(NSUInteger)n {
    return [[self children] objectAtIndex:n];
}


- (NSInteger)numberOfChildren {
    NSArray *tmp = [self children];
    return (tmp == leafNode) ? (-1) : [tmp count];
}


//- (void)dealloc {
//    if (children != leafNode) {
//        [children release];
//    }
//    [relativePath release];
//    [super dealloc];
//}

@end
