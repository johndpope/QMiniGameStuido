//
//  QMProjectData.h
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 26..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#ifndef __QMiniIDE__QMProjectData__
#define __QMiniIDE__QMProjectData__

#include <stdio.h>
#include <string>


class QMProjectData
{
public:
    
    static QMProjectData* getInstance();
    
    void init();

    const char* getPath() {return path.c_str();};
    
private:
    std::string path;
    
};

#endif /* defined(__QMiniIDE__QMProjectData__) */
