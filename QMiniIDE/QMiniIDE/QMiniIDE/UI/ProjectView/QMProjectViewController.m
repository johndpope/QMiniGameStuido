//
//  QMResourceController.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 11. 28..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import "QMProjectViewController.h"
//#import "NSView+BackgroundColor.h"

#import "FileSystemItem.h"

// data
#include "QMProjectData.h"



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

- (NSString*) rootPath
{
    const char* path = QMProjectData::getInstance()->getPath();
    mRootPath = [NSString stringWithUTF8String:path];
    return mRootPath;
}

#pragma mark -
#pragma mark - as a NSOutlineViewDataSource
- (NSInteger)outlineView:(NSOutlineView *)outlineView numberOfChildrenOfItem:(id)item
{
#pragma unused(outlineView)
 
    return (item == nil) ? 1 : [item numberOfChildren];
}

- (id)outlineView:(NSOutlineView *)outlineView child:(NSInteger)index ofItem:(id)item
{
#pragma unused(outlineView)

    return (item == nil) ? [FileSystemItem rootItem:[self rootPath]] : [(FileSystemItem *)item childAtIndex:index];
}

- (BOOL)outlineView:(NSOutlineView *)outlineView isItemExpandable:(id)item
{
    return (item == nil) ? YES : ([item numberOfChildren] != -1);
}

- (id)outlineView:(NSOutlineView *)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(id)item
{
    return (item == nil) ? @"/" : [item relativePath];
}

#pragma mark -
#pragma mark - as a NSOutlineView delegate
- (void)		outlineViewSelectionDidChange:(NSNotification*) notification
{
    int rowIndex = [_projectTree selectedRow];
    
    FileSystemItem* fi = ( rowIndex == -1)? nil : [_projectTree itemAtRow:rowIndex];
    NSLog(@"item %@", [fi fullPath]);
}
//- (void)		outlineView:(NSOutlineView*) olv willDisplayCell:(NSCell*) cell forTableColumn:(NSTableColumn*) tableColumn item:(id) item
//{
//#pragma unused(olv)
//    
//    if ([[tableColumn identifier] isEqualToString:@"name"] && [cell respondsToSelector:@selector(setTextFieldIcon:)])
//    {
//        
//    }
//        //[(GCIconTextFieldCell*) cell setTextFieldIcon:[item icon]];
//}

@end
