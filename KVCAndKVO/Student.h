//
//  Student.h
//  RunTimePractice
//
//  Created by D.xin on 2016/11/14.
//  Copyright © 2016年 D.xin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Person.h"
@interface Student : NSObject
@property(nonatomic,retain)Book *book;
@property(nonatomic,retain)Person *person;
@property(nonatomic,retain)NSArray *books;
@end
