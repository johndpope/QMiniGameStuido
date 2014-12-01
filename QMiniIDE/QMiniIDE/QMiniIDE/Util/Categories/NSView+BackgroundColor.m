//
//  NSView+NSView_BackgroundColor_h.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 1..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import "NSView+BackgroundColor.h"

@implementation NSView (QMNSViewBackgroundColor)

- (NSColor *) backgroundColor
{
    CGColorRef colorRef = self.layer.backgroundColor;
    NSColor *theColor = [NSColor colorWithCGColor:colorRef];
    return theColor;
}

- (void) setBackgroundColor:(NSColor *)backgroundColor
{
    [self setWantsLayer:YES];
    self.layer.backgroundColor = backgroundColor.CGColor;
}

@end
