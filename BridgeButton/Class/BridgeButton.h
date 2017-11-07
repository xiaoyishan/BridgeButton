//
//  BridgeButton.h
//  BridgeButton
//
//  Created by xiaSang on 2017/11/6.
//  Copyright © 2017年 Sundear. All rights reserved.
//

#import <UIKit/UIKit.h>

// Test model
@interface ProductModel : NSObject
@property (nonatomic, assign)   NSUInteger    ProductID;
@property (nonatomic, copy)     NSString     *ProductName;
@property (nonatomic, strong)   NSDictionary *ProductInfo;
@end


@interface BridgeButton : UIButton
//@property (nonatomic,strong) NSDictionary *BridgeDic;
@property (nonatomic,strong) ProductModel *Model;
@end
