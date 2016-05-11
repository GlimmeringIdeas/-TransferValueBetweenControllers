//
//  EmoInputAttributesViewController.h
//  控制器间的传值
//
//  Created by Emo_Lin on 14/10/24.
//  Copyright © 2014年 Emo Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmoInputAttributesViewController : UIViewController
//用于接收传进来的值
@property (nonatomic , copy)NSString *attributesString;
@end
