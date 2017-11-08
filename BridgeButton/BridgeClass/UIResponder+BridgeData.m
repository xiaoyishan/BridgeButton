//
//  UIResponder+BridgeData.m
//  BridgeButton
//
//  Created by xiaSang on 2017/11/8.
//  Copyright © 2017年 Sundear. All rights reserved.
//

#import "UIResponder+BridgeData.h"

static const void *BridgeDicResponderKey = &BridgeDicResponderKey;
static const void *BridgeArrayResponderKey = &BridgeArrayResponderKey;
static const void *BridgeModelResponderKey = &BridgeModelResponderKey;





@implementation UIResponder (BridgeData)
@dynamic BridgeDic,BridgeArr,BridgeModel;


// 字典
-(void)setBridgeDic:(NSDictionary *)BridgeDic{
    objc_setAssociatedObject(self, BridgeDicResponderKey, BridgeDic, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSDictionary *)BridgeDic{
    return objc_getAssociatedObject(self, BridgeDicResponderKey);
}


// 数组
-(void)setBridgeArr:(NSArray *)BridgeArr{
    objc_setAssociatedObject(self, BridgeArrayResponderKey, BridgeArr, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSArray*)BridgeArr{
    return objc_getAssociatedObject(self, BridgeArrayResponderKey);
}

// model
-(void)setBridgeModel:(NSObject *)BridgeModel{
    objc_setAssociatedObject(self, BridgeModelResponderKey, BridgeModel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(NSObject*)BridgeModel{
    return objc_getAssociatedObject(self, BridgeModelResponderKey);
}
@end
