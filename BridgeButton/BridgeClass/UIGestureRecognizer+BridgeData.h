//
//  UIGestureRecognizer+BridgeData.h
//  BridgeButton
//
//  Created by xiaSang on 2017/11/7.
//  Copyright © 2017年 Sundear. All rights reserved.
//
// 给手势添加参数

#import <UIKit/UIKit.h>
#import "objc/runtime.h"

@interface UIGestureRecognizer (BridgeData)
@property (nonatomic, strong) NSDictionary *BridgeDic;
@property (nonatomic, strong) NSArray *BridgeArr;
@property (nonatomic, strong) NSObject *BridgeModel;
@end
