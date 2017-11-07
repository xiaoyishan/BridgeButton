//
//  UIControl+BridgeButton.m
//  BridgeButton
//
//  Created by xiaSang on 2017/11/6.
//  Copyright © 2017年 Sundear. All rights reserved.
//

#import "UIControl+BridgeButton.h"


static const void *BridgeButtonKey = &BridgeButtonKey;

@implementation UIButton (BridgeButton)
@dynamic BridgeDic;

-(void)setBridgeDic:(NSDictionary *)BridgeDic{
    objc_setAssociatedObject(self, BridgeButtonKey, BridgeDic, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSDictionary *)BridgeDic{
    return objc_getAssociatedObject(self, BridgeButtonKey);
}



@end
