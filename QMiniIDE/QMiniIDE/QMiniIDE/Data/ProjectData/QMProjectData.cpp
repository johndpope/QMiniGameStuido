//
//  QMProjectData.cpp
//  QMiniIDE
//
//  Created by st13892 on 2014. 12. 26..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#include "QMProjectData.h"


static QMProjectData* s_proejctData = NULL;

QMProjectData* QMProjectData::getInstance()
{
    if (!s_proejctData)
    {
        s_proejctData = new QMProjectData;
        s_proejctData->init();
    }
    return s_proejctData;
}

void QMProjectData::init()
{
    path = "/Users/shuang/Wangys/workspace/QMiniGameStudio/Examples/HelloWorld";
}