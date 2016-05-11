//
//  ViewController.m
//  控制器间的传值
//
//  Created by Emo_Lin on 14/10/24.
//  Copyright © 2014年 Emo Lin. All rights reserved.
//

#import "EmoMainViewController.h"
#import "EmoAttributesViewController.h"
#import "EmoBlockViewController.h"
#import "EmoDelegateViewController.h"
#import "EmoNotificationViewController.h"
@interface EmoMainViewController ()
@property (nonatomic , strong) UIButton *delegateBtn;
@property (nonatomic , strong) UIButton *attributeBtn;
@property (nonatomic , strong) UIButton *blockBtn;
@property (nonatomic , strong) UIButton *notificationBtn;
@property (nonatomic , strong) UIButton *KVOBtn;
@end

@implementation EmoMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.navigationItem.title = @"控制器间的传值";
    CGFloat width = 150;
    CGFloat height = 30;
    CGFloat topMargin = 100;
    CGFloat YMargin = 80;
    
    self.delegateBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.delegateBtn.frame = CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin, width, height);
    [self.delegateBtn setTitle:@"代理传值" forState:UIControlStateNormal];
    [self.delegateBtn addTarget:self action:@selector(delegateClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.delegateBtn];
    
    self.attributeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.attributeBtn setTitle:@"属性传值" forState:UIControlStateNormal];
    self.attributeBtn.frame = CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin+YMargin, width, height);
    [self.attributeBtn addTarget:self action:@selector(attributeClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.attributeBtn];
    
    self.blockBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.blockBtn.frame = CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin+YMargin*2, width, height);
    [self.blockBtn setTitle:@"BLOCK传值" forState:UIControlStateNormal];
    [self.blockBtn addTarget:self action:@selector(blockClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.blockBtn];
    
    self.notificationBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.notificationBtn.frame = CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin+YMargin*3, width, height);
    [self.notificationBtn setTitle:@"通知传值" forState:UIControlStateNormal];
    [self.notificationBtn addTarget:self action:@selector(notificationClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.notificationBtn];
    
    
}

-(void)delegateClick {
    EmoDelegateViewController  *vc = [[EmoDelegateViewController alloc] init];
    self.navigationItem.backBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)attributeClick {
    EmoAttributesViewController  *vc = [[EmoAttributesViewController alloc] init];
    self.navigationItem.backBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)blockClick {
    EmoBlockViewController  *vc = [[EmoBlockViewController alloc] init];
    self.navigationItem.backBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)notificationClick {
    EmoNotificationViewController  *vc = [[EmoNotificationViewController alloc] init];
    self.navigationItem.backBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationController pushViewController:vc animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
