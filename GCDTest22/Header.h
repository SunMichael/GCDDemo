//
//  Header.h
//  GCDTest22
//
//  Created by keyrun on 14-12-31.
//  Copyright (c) 2014年 keyrun. All rights reserved.
//

#ifndef GCDTest22_Header_h
#define GCDTest22_Header_h

struct MyStudent {
    int age ;
    float height ;
    char *name;
};
typedef struct MyStudent MyStudent;             //自定义结构体

typedef enum : NSUInteger {             //枚举
    spring = 1,
    winter,
    summer,
} season;

enum MyEnum{
    MyEnumOne =1 ,
    MyEnumTwo ,
    MyEnumThree
};

#endif
