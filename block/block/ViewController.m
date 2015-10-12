//
//  ViewController.m
//  block
//
//  Created by 茆明辉 on 15/10/12.
//  Copyright (c) 2015年 brzt.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int b = 0;
    void(^blo)() = ^{
        NSLog(@"Input:b=%d",b);
    };
    b = 3;
    blo();
    
    /*
     虽然我们在调用blo之前改变了b的值，
     但是输出的还是Block编译时候b的值，
     所以截获瞬间自动变量就是：在Block中会保存变量的值，
     而不会随变量的值的改变而改变。
    */
    
    __block int c = 0;
    void(^clo)() = ^{
        NSLog(@"Input:c=%d",c);
    };
    c = 3;
    clo();
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
