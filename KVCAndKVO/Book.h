//
//  Book.h
//  RunTimePractice
//
//  Created by D.xin on 2016/11/10.
//  Copyright © 2016年 D.xin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property(nonatomic,assign)NSNumber  * price;
@property(nonatomic,copy)NSString *bookName;
@property(nonatomic,assign)NSNumber * bookCount;
-(instancetype)initWithName:(NSString *)name price:(NSNumber *)price count:(NSNumber *)count;
@end
