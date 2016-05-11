//
//  EmoInputBlockViewController
//  控制器间的传值
//
//  Created by Emo_Lin on 14/10/24.
//  Copyright © 2014年 Emo Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

// 需要把什么值传出去就以什么为参数
// 1.
typedef void (^EmoInputBlockViewControllerBlock)(NSString *secondString);

@interface EmoInputBlockViewController : UIViewController

//用于保存需要传进来的值，passValue的类型就是上面声明的参数类型
@property (nonatomic , copy) EmoInputBlockViewControllerBlock passValue;

// 定义一个方法用来执行调用 block 值时处理的内容
-(void)showTheResultToFirst:(EmoInputBlockViewControllerBlock) block;

@end
