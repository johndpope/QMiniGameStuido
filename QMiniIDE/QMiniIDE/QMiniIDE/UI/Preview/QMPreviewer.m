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

static float red = 1.0f;
static void drawAnObject ()
{
    glColor3f(red, 0.85f, 0.35f);
    glBegin(GL_TRIANGLES);
    {
        glVertex3f(  0.0,  0.6, 0.0);
        glVertex3f( -0.2, -0.3, 0.0);
        glVertex3f(  0.2, -0.3 ,0.0);
    }
    glEnd();
}

- (BOOL)prepareRenderData
{
    
    return YES;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    glClearColor(0, 0.5f, 0, 0);
    glClear(GL_COLOR_BUFFER_BIT);
    //drawAnObject();
//    [self clearViewer];
    glFlush();
}

- (void) setImagePath :(NSString*) imagePath
{
    _imagePath = imagePath;
    
}


- (void) redraw
{
//    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
//    
//    glBindVertexArray(vertexArrayObj);
//    
//    glDrawArrays(GL_TRIANGLES, 0, 12*3);
//    
//    glBindVertexArray(0);
}

- (void) getTexture
{
//    NSString* urlStr =@"/Users/shuang/Wangys/workspace/QMiniGameStudio/Examples/HelloWorld/images/mickey.png";
//    CFURLRef url = (__bridge CFURLRef)[NSURL fileURLWithPath:urlStr];
//    FSRef fileRef;
//    CFURLGetFSRef(url, &fileRef);
//    
//    CGImageSourceRef myImageSourceRef = CGImageSourceCreateWithURL(url, NULL);
//    CGImageRef myImageRef = CGImageSourceCreateImageAtIndex (myImageSourceRef, 0, NULL);
//    GLint myTextureName;
//    size_t width = CGImageGetWidth(myImageRef);
//    size_t height = CGImageGetHeight(myImageRef);
//    CGRect rect = {{0, 0}, {width, height}};
//    void * myData = calloc(width * 4, height);
//    CGColorSpaceRef space = CGColorSpaceCreateDeviceRGB();
//    CGContextRef myBitmapContext = CGBitmapContextCreate (myData,
//                                                          width, height, 8,
//                                                          width*4, space,
//                                                          kCGBitmapByteOrder32Host |
//                                                          kCGImageAlphaPremultipliedFirst);
//    CGContextSetBlendMode(myBitmapContext, kCGBlendModeCopy);
//    CGContextDrawImage(myBitmapContext, rect, myImageRef);
//    CGContextRelease(myBitmapContext);
//    glPixelStorei(GL_UNPACK_ROW_LENGTH, width);
//    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
//    glGenTextures(1, &myTextureName);
//    glBindTexture(GL_TEXTURE_RECTANGLE_ARB, myTextureName);
//    glTexParameteri(GL_TEXTURE_RECTANGLE_ARB,
//                    GL_TEXTURE_MIN_FILTER, GL_LINEAR);
//    glTexImage2D(GL_TEXTURE_RECTANGLE_ARB, 0, GL_RGBA8, width, height,
//                 0, GL_BGRA_EXT, GL_UNSIGNED_INT_8_8_8_8_REV, myData);
//    free(myData);
    
    
     NSString* name =@"/Users/shuang/Wangys/workspace/QMiniGameStudio/Examples/HelloWorld/images/mickey.png";
    NSImage             *image;
    NSBitmapImageRep    *bitmap;
    
    image = [[NSImage alloc] initWithContentsOfFile:name];
    if( !image ) {
        NSLog( @"couldn't load image named %@", name ) ;
        return;
    }
    // Ensure the image is a GL-compatible size
//    if( YES ) {
//        NSSize sz = { 128.0, 128.0 };
//        [image setScalesWhenResized: YES];
//        [image setSize:sz];
//    }
    bitmap = [[NSBitmapImageRep alloc] initWithData:[image
                                                     TIFFRepresentation]];
    unsigned char * bytes = [bitmap bitmapData];
    NSLog( @"couldn't load image named %x", [bitmap bitmapData] ) ;
    glPixelStorei( GL_UNPACK_ALIGNMENT, 1 );
    
    if( YES ) {
        // This comes out perfect
        glTexImage2D( GL_TEXTURE_2D, 0, GL_RGBA, [bitmap size].width,
                     [bitmap size].height, 0, GL_RGB, GL_UNSIGNED_BYTE,
                     [bitmap bitmapData] );
    } else {
        // This yields a yellowish image
        glTexImage2D( GL_TEXTURE_2D, 0, GL_RGBA, [image size].width,
                     [image size].height, 0, GL_RGB, GL_UNSIGNED_BYTE,
                     [[image TIFFRepresentation] bytes] );
    }
    
    glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    
}

@end
