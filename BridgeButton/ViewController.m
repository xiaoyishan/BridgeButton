//
//  ViewController.m
//  BridgeButton
//
//  Created by xiaSang on 2017/11/6.
//  Copyright © 2017年 Sundear. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BridgeButton *button = [BridgeButton buttonWithType:UIButtonTypeSystem];
    button.tag = 100;
    button.frame = CGRectMake(100, 100, 200, 70);
    button.backgroundColor = [UIColor brownColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(ClickButton:) forControlEvents:UIControlEventTouchUpInside];
    NSDictionary *Dic = @{@"code":@"200",
                         @"msg":@"<nil>",
                         @"data":@{@"mydata":@"balabalabalabalabalabala"},
                         };
    [button setBridgeDic:Dic];
    
    
//    BridgeButton *button1 = [BridgeButton buttonWithType:UIButtonTypeSystem];
//    button1.frame = CGRectMake(100, 200, 200, 70);
//    button1.backgroundColor = [UIColor cyanColor];
//    [self.view addSubview:button1];
//    [button1 addTarget:self action:@selector(ClickButton:) forControlEvents:UIControlEventTouchUpInside];
//    button1.BridgeDic = @{@"moudle":@"product"};
//
//    BridgeButton *button2 = [BridgeButton buttonWithType:UIButtonTypeSystem];
//    button2.frame = CGRectMake(100, 300, 200, 70);
//    button2.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:button2];
//    [button2 addTarget:self action:@selector(ClickButton:) forControlEvents:UIControlEventTouchUpInside];
//    button2.Model = [ProductModel new];
//    button2.Model.ProductID = 123;
//    button2.Model.ProductName = @"KU74JYFi3";
}




- (void)ClickButton:(BridgeButton*)button {
   
    NSLog(@"%zd",button.tag);
    NSLog(@"Dic:%@ ",button.BridgeDic);
    NSLog(@"Model:%@ ",button.Model);
}


@end
