//
//  QMCommonMacro.h
//  QMiniIDE
//
//  Created by st13892 on 2014. 11. 28..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#ifndef QMiniIDE_QMCommonMacro_h
#define QMiniIDE_QMCommonMacro_h


// 显示当前的函数名
#define QM_LOG_CMD       NSLog(@"%@", NSStringFromSelector(_cmd));
// 显示当前函数名及行号
#define QM_LOG_CMD_LINE  NSLog(@"<%@:%@:%d>", NSStringFromClass([self class]), NSStringFromSelector(_cmd), __LINE__);


#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#   define DLog(...)
#endif

// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

#endif
