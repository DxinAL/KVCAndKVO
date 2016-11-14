//
//  Book.m
//  RunTimePractice
//
//  Created by D.xin on 2016/11/10.
//  Copyright © 2016年 D.xin. All rights reserved.
//

#import "Book.h"

@implementation Book
-(instancetype)initWithName:(NSString *)name price:(NSNumber *)price count:(NSNumber *)count{
    if(self = [super init]){
        self.bookName = name;
        self.price = price;
        self.bookCount = count;
    }
    return self;
}

@end
