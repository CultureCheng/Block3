//
//  main.m
//  OC-Block内存（ARC-看门狗）
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1=[Person new];
        
        Dog *d1=[Dog new];
        [d1 setDogID:10000];
        [d1 dogBark];
        
        [d1 setDormin:p1];
        [p1 setPetDog:d1];
        
        Dog *d2=[Dog new];
        [d2 setDogID:10001];
        
        [p1 setPetDog:d2];
        [d2 setDormin:p1];
        
        [d2 dogBark];
        
        sleep(3);
    }
    return 0;
}
