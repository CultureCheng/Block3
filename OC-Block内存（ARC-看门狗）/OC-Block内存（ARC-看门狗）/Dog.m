//
//  Dog.m
//  OC-Block内存(MRC-看门狗)
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)dogBark
{
    //增加吠叫次数
    _barkCount++;
    NSLog(@"dogID:%d bark %d...",_dogID,_barkCount);
    //怎么通知主人
    if (_callPerson)
    {
        _callPerson(self,_barkCount);//把狗和次数传过去
    }
}
-(void)dealloc
{
    NSLog(@"Dog=%@,%d被释放了...",self,_dogID);
}
@end
