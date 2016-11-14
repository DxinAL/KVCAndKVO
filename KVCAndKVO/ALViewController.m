//
//  ViewController.m
//  RunTimePractice
//
//  Created by D.xin on 2016/11/8.
//  Copyright © 2016年 D.xin. All rights reserved.
//

#import "ALViewController.h"
#import "Person.h"
#import "Book.h"
#import "Student.h"
@interface ALViewController ()
{
    Student *student ;
}
@end



@implementation ALViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    /*
    kvc 、kvo 数组的整体操作
    */
    student = [[Student alloc]init];
    student.person.name = @"漩涡鸣人";
     NSLog(@"------------%@",student.person.name);
    [student setValue:@"dong" forKeyPath:@"person.name"];
    NSLog(@"------------%@",student.person.name);
    
    Person *girlf = [[Person alloc]init];
    girlf.name = @"zheng";
    [student setValue:girlf forKey:@"girlFriend"];
    //获取NSArray
    NSArray * bookNameArray = [student.books valueForKeyPath:@"bookName"];
    NSLog(@"%@",bookNameArray);
    NSArray *nameArray = [student valueForKeyPath:@"books.bookName"];
    NSLog(@"%@",nameArray);
    
    //引用运算符来进行运算，获取平均值，最小值，最大值，总数 这样就可以不用再循环遍历
  //计算总数
    NSNumber *count = [student.books valueForKeyPath:@"@count"];
    NSLog(@"%@",count);//输出3
    NSNumber *countd = [student valueForKeyPath:@"books.@count"];
    
    
    //计算总和
    NSNumber * sum = [student.books valueForKeyPath:@"@sum.price"];
    NSLog(@"%@",sum);
    
    
    
    //可以对对象进行批量更改，可以给对象一次性的赋值，也可以一次性的取值
    NSArray * keys = [NSArray arrayWithObjects:@"book",@"person",@"books" ,nil];
    NSDictionary *dic = [student dictionaryWithValuesForKeys:keys];
    NSLog(@"%@",dic);
    
    
    
    Book *bookW = [[Book alloc]initWithName:@"无字天书" price:@15 count:@166];
    Person *per = [[Person alloc]init];
    
    //同时设置一个对象的键值
    NSArray *arrayKeys = [NSArray arrayWithObjects:@"book",@"person",@"books", nil];
    NSArray *arrayValue = [NSArray arrayWithObjects:bookW,per,student.books, nil];
    NSDictionary *dics = [NSDictionary dictionaryWithObjects:arrayValue forKeys:arrayKeys];
    [student setValuesForKeysWithDictionary:dics];
    
    
    //kvo 键值观察者
    int option = NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld;
    
    /*
     位运算：
     
     
     
     */
    
    [student addObserver:self forKeyPath:@"book.bookName" options:option context:@"1234"];
    
    
    
    student.book.bookName = @"西游记";
    NSLog(@"%@",student.book.bookName);
    

}




-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
        //点击的时候改变属性，然后实行监听
        student.book.bookName = @"老人与海";
}

/*
    keyPath:   监听的属性的名称
 
     object:被监听的属性
 
     change: 属性的改变
 
     context: 监听时候传入的参数
 */
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    NSLog(@"%@",keyPath);
    NSLog(@"%@",[NSString stringWithFormat:@"%@", change[@"new"]]);
    NSLog(@"%@",context);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
