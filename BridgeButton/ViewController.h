//
//  ViewController.h
//  BridgeButton
//
//  Created by xiaSang on 2017/11/6.
//  Copyright © 2017年 Sundear. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UIControl+BridgeData.h"
#import "UIGestureRecognizer+BridgeData.h"


@interface ViewController : UIViewController

@end



// Test model
@interface ProductModel : NSObject
@property (nonatomic, assign)   NSUInteger    ProductID;
@property (nonatomic, copy)     NSString     *ProductName;
@property (nonatomic, strong)   NSDictionary *ProductInfo;
@end
