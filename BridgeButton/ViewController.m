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
    
    // 源数据
    NSDictionary *Dic = @{@"code":@"200",
                          @"msg":@"<nil>",
                          @"data":@{@"mydata":@"balabalabalabalabalabala"},
                          };
    
    NSArray *Arr = @[@1,@2,@17];
    ProductModel *model = [ProductModel new];
    model.ProductID = 123;
    model.ProductName = @"KU74JYFi3";
    
    
    
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.tag = 100;
    button.frame = CGRectMake(200, 50, 100, 70);
    button.backgroundColor = [UIColor brownColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(ClickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    button.BridgeDic = Dic;
    button.BridgeArr = Arr;
    button.BridgeModel = model;
    
    
    
    
    
    UIImageView *Photo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 200, 300, 200)];
    Photo.userInteractionEnabled = YES;
    Photo.image = [UIImage imageNamed:@"logo"];
    [self.view  addSubview:Photo];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(ClickImageView:)];
    [Photo addGestureRecognizer:tap];
    
    tap.BridgeDic = Dic;
    tap.BridgeArr = Arr;
    tap.BridgeModel = model;
    
    
    
    
}






-(void)ClickImageView:(UITapGestureRecognizer*)Guesture{

    NSLog(@"ImageDic:%@ ",Guesture.BridgeDic);
    NSLog(@"ImageArray:%@ ",Guesture.BridgeArr);
    
    ProductModel *model = (ProductModel*)Guesture.BridgeModel;
    NSLog(@"ImageModel:%@ ", model);
    NSLog(@"ImageModel(ProductName):%@ ", model.ProductName);
}


- (void)ClickButton:(UIButton*)button {
   
    NSLog(@"%zd",button.tag);
    NSLog(@"Dic:%@ ",button.BridgeDic);
    NSLog(@"Array:%@ ",button.BridgeArr);

    ProductModel *model = (ProductModel*)button.BridgeModel;
    NSLog(@"Model:%@ ", model);
    NSLog(@"Model(ProductName):%@ ", model.ProductName);
}





@end


@implementation ProductModel
@end
