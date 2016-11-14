//
//  Student.m
//  RunTimePractice
//
//  Created by D.xin on 2016/11/14.
//  Copyright © 2016年 D.xin. All rights reserved.
//

#import "Student.h"

@interface Student ()
@property(nonatomic,retain)Person *girlFriend;
@end
@implementation Student

-(instancetype)init{
    if(self = [super init]){
        self.person = [[Person alloc]init];
        self.book = [[Book alloc]init];
        Person *pesin = [[Person alloc]init];
        pesin.name = @"he";
        self.girlFriend = pesin;
        self.book.bookName = @"战争与和平";
        Book *book1 = [[Book alloc]initWithName:@"圣经" price:@123 count:@14];
        Book *book2 = [[Book alloc]initWithName:@"葵花宝典" price:@13 count:@34];
        Book *book3 = [[Book alloc]initWithName:@"九阴真经" price:@15 count:@17];
        self.books =@ [book1,book2,book3];
        
    
    }
    return self;
}

@end
