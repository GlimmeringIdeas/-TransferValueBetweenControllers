//
//  EmoNotificationViewController.m
//  控制器间的传值
//
//  Created by Emo_Lin on 14/10/24.
//  Copyright © 2014年 Emo Lin. All rights reserved.
//

#import "EmoNotificationViewController.h"
#import "EmoInputNotificationViewController.h"
@interface EmoNotificationViewController ()
@property (nonatomic , strong) UILabel *notificationField;
@property (nonatomic , strong) UIButton *notificationBtn;
@end

@implementation EmoNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"通知传值";
    self.view.backgroundColor = [UIColor orangeColor];
    CGFloat width = 200;
    CGFloat height = 30;
    CGFloat topMargin = 100;
    CGFloat YMargin = 80;
    
    self.notificationField = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin, width, height)];
    [self.view addSubview:self.notificationField];
    
    self.notificationBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.notificationBtn.frame = CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin+YMargin, width, height);
    [self.notificationBtn setTitle:@"开始通知的逆向传值" forState:UIControlStateNormal];
    [self.notificationBtn addTarget:self action:@selector(notificationClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.notificationBtn];
    
    //第二步,通知中心,发送一条消息通知----------其中name名字千万不要写错了,会出现在3个地方
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(showLabelText:) name:@"labelTextNotification" object:nil];
    
}


- (void)showLabelText:(NSNotification *)notification
{
    //第三,实现通知中心内部的方法,并实现传值
    id text = notification.object;
    self.notificationField.text = text;
}


-(void) notificationClick {
    EmoInputNotificationViewController *share =[[EmoInputNotificationViewController alloc] init];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationController pushViewController:share animated:YES];
}

- (void)dealloc
{
    //第四步,消息发送完,要移除掉
    [[NSNotificationCenter defaultCenter]removeObserver:self name:@"labelTextNotification" object:nil];
}

@end
