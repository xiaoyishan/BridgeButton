//
//  UIResponder+BridgeData.h
//  BridgeButton
//
//  Created by xiaSang on 2017/11/8.
//  Copyright © 2017年 Sundear. All rights reserved.
//
// 给UI添加参数 跟UIcontrol重合了 主要目的是为了部署tableview等无数据等绑定标志

#import <UIKit/UIKit.h>
#import "objc/runtime.h"



@interface UIResponder (BridgeData)
@property (nonatomic, strong) NSDictionary *BridgeDic;
@property (nonatomic, strong) NSArray *BridgeArr;
@property (nonatomic, strong) NSObject *BridgeModel;
@end
