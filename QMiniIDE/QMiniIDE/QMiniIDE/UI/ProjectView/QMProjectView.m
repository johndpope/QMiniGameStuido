//
//  QMResourceView.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 3..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import "QMProjectView.h"

@implementation QMProjectView

- (void)mouseDown:(NSEvent *)theEvent {
    [self setFrameColor:[NSColor redColor]];
    [self setNeedsDisplay:YES];
    NSLog(@"x = %f, y = %f ",theEvent.locationInWindow.x, theEvent.locationInWindow.y );
}

- (void)mouseUp:(NSEvent *)theEvent {
    [self setFrameColor:[NSColor greenColor]];
    [self setNeedsDisplay:YES];
}

- (void)mouseMoved:(NSEvent *)theEvent
{
    
}


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
//    [[self frameColor] set];
//    NSRectFill(dirtyRect);
}

@end
