//
//  UIGestureRecognizer+BridgeData.m
//  BridgeButton
//
//  Created by xiaSang on 2017/11/7.
//  Copyright © 2017年 Sundear. All rights reserved.
//

#import "UIGestureRecognizer+BridgeData.h"



static const void *BridgeDicGestureKey = &BridgeDicGestureKey;
static const void *BridgeArrayGestureKey = &BridgeArrayGestureKey;
static const void *BridgeModelGestureKey = &BridgeModelGestureKey;



@implementation UIGestureRecognizer (BridgeData)
@dynamic BridgeDic,BridgeArr,BridgeModel;


// 字典
-(void)setBridgeDic:(NSDictionary *)BridgeDic{
    objc_setAssociatedObject(self, BridgeDicGestureKey, BridgeDic, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSDictionary *)BridgeDic{
    return objc_getAssociatedObject(self, BridgeDicGestureKey);
}


// 数组
-(void)setBridgeArr:(NSArray *)BridgeArr{
    objc_setAssociatedObject(self, BridgeArrayGestureKey, BridgeArr, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSArray*)BridgeArr{
    return objc_getAssociatedObject(self, BridgeArrayGestureKey);
}

// model
-(void)setBridgeModel:(NSObject *)BridgeModel{
    objc_setAssociatedObject(self, BridgeModelGestureKey, BridgeModel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(NSObject*)BridgeModel{
    return objc_getAssociatedObject(self, BridgeModelGestureKey);
}
@end
