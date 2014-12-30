//
//  QMPreviewer.h
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 3..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface QMPreviewer : NSOpenGLView
{
    NSString* _imagePath;
}

- (void) setImagePath :(NSString*) imagePath;
- (void) redraw;

- (void) getTexture;
@end
