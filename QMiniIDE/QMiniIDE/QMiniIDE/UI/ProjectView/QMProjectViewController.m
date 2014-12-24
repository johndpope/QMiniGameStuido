//
//  QMResourceController.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 11. 28..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import "QMProjectViewController.h"
//#import "NSView+BackgroundColor.h"

#import "QMFolderInfo.h"

@interface QMProjectViewController ()

@end

@implementation QMProjectViewController

- (void)awakeFromNib
{

    NSColor *semiTransparentBlue =
    [NSColor colorWithDeviceRed:0.0 green:0.0 blue:1.0 alpha:0.5];
    
    //[[self view] setBackgroundColor:semiTransparentBlue];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}


- (void) setRootPath:(NSString*) path
{
    if(![path isEqualToString:[self rootPath]])
    {
        mRootInfo = [[QMFolderInfo alloc] initWithPath:path];
//        [mRootInfo setIncludesPackages:[self includesFilePackages]];
        [_projectTree reloadData];
        [_projectTree selectRow:-1 byExtendingSelection:NO];
        
        //NSLog(@"folders: %@", mRootInfo);
    }
}

- (NSArray*) sortedFoldersOfItem:(QMFolderInfo*) fi usingSortDescriptors:(NSArray*) sortDescriptors
{
    NSMutableArray*		folders = [[fi subFolders] mutableCopy];
    [folders sortUsingDescriptors:sortDescriptors];
    return folders;
}


#pragma mark -
#pragma mark - as a NSOutlineViewDataSource
- (NSInteger)outlineView:(NSOutlineView *)outlineView numberOfChildrenOfItem:(id)item
{
#pragma unused(outlineView)
    if( item == nil )
        return 1;
    else
        return [item valence];
}

- (id)outlineView:(NSOutlineView *)outlineView child:(NSInteger)index ofItem:(id)item
{
#pragma unused(outlineView)
    
    if( item == nil )
        return mRootInfo;
    else
        return [[self sortedFoldersOfItem:item usingSortDescriptors:[_projectTree sortDescriptors]] objectAtIndex:index];
}

- (BOOL)outlineView:(NSOutlineView *)outlineView isItemExpandable:(id)item
{
    return YES;
}

@end
