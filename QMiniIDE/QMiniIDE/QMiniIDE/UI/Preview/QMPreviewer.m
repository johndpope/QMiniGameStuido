//
//  QMPreviewer.m
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 3..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import "QMPreviewer.h"
#include <OpenGL/gl.h>

@implementation QMPreviewer

static void drawAnObject ()
{
    glColor3f(1.0f, 0.85f, 0.35f);
    glBegin(GL_TRIANGLES);
    {
        glVertex3f(  0.0,  0.6, 0.0);
        glVertex3f( -0.2, -0.3, 0.0);
        glVertex3f(  0.2, -0.3 ,0.0);
    }
    glEnd();
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    glClearColor(0, 0, 0, 0);
    glClear(GL_COLOR_BUFFER_BIT);
    drawAnObject();
    glFlush();
}

@end
