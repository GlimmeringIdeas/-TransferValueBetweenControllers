//
//  EmoInputDataViewController
//  控制器间的传值
//
//  Created by Emo_Lin on 14/10/24.
//  Copyright © 2014年 Emo Lin. All rights reserved.
//  准备传递的页面

#import <UIKit/UIKit.h>
// 1.  声明协议为“EmoInputDataViewControllerDelegate”
// 2. 声明协议方法为“-(void)changeValue:(NSString *)value;”
// 3. 声明代理属性类型为“id”的“delegate”，并且遵从协议“<EmoInputDataViewControllerDelegate>”
@protocol EmoInputDataViewControllerDelegate<NSObject>
-(void)changeValue:(NSString *)value;
@end
@interface EmoInputDataViewController : UIViewController
//用于接收传进来的值
@property (nonatomic , copy)NSString *attributesString;
@property (nonatomic,unsafe_unretained) id<EmoInputDataViewControllerDelegate>delegate;
@end
