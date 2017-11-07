//
//  UIControl+BridgeData.m
//  BridgeButton
//
//  Created by xiaSang on 2017/11/7.
//  Copyright © 2017年 Sundear. All rights reserved.
//

#import "UIControl+BridgeData.h"

static const void *BridgeDicKey = &BridgeDicKey;
static const void *BridgeArrayKey = &BridgeArrayKey;
static const void *BridgeModelKey = &BridgeModelKey;

@implementation UIControl (BridgeData)
@dynamic BridgeDic,BridgeArr,BridgeModel;


// 字典
-(void)setBridgeDic:(NSDictionary *)BridgeDic{
    objc_setAssociatedObject(self, BridgeDicKey, BridgeDic, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSDictionary *)BridgeDic{
    return objc_getAssociatedObject(self, BridgeDicKey);
}


// 数组
-(void)setBridgeArr:(NSArray *)BridgeArr{
    objc_setAssociatedObject(self, BridgeArrayKey, BridgeArr, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSArray*)BridgeArr{
    return objc_getAssociatedObject(self, BridgeArrayKey);
}

// model
-(void)setBridgeModel:(NSObject *)BridgeModel{
    objc_setAssociatedObject(self, BridgeModelKey, BridgeModel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(NSObject*)BridgeModel{
    return objc_getAssociatedObject(self, BridgeModelKey);
}
@end
