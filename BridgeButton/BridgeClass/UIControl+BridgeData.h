//
//  UIControl+BridgeData.h
//  BridgeButton
//
//  Created by xiaSang on 2017/11/7.
//  Copyright © 2017年 Sundear. All rights reserved.
//
// 主要用于给button添加传递参数

#import <UIKit/UIKit.h>
#import "objc/runtime.h"

@interface UIControl (BridgeData)
@property (nonatomic, strong) NSDictionary *BridgeDic;
@property (nonatomic, strong) NSArray *BridgeArr;
@property (nonatomic, strong) NSObject *BridgeModel;
@end
