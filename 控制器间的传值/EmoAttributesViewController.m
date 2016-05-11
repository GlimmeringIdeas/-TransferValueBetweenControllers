//
//  EmoAttributesViewController.m
//  控制器间的传值
//
//  Created by Emo_Lin on 14/10/24.
//  Copyright © 2014年 Emo Lin. All rights reserved.
//

#import "EmoAttributesViewController.h"
#import "EmoInputAttributesViewController.h"
@interface EmoAttributesViewController ()
@property (nonatomic , strong) UITextField *attributesField;
@property (nonatomic , strong) UIButton *attributesBtn;
@end

@implementation EmoAttributesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"属性传值";
    self.view.backgroundColor = [UIColor orangeColor];
    CGFloat width = 150;
    CGFloat height = 30;
    CGFloat topMargin = 100;
    CGFloat YMargin = 80;
    
    self.attributesField = [[UITextField alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin, width, height)];
    self.attributesField.borderStyle = UITextBorderStyleRoundedRect;
    
    [self.view addSubview:self.attributesField];
    
    self.attributesBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.attributesBtn.frame = CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin+YMargin, width, height);
    [self.attributesBtn setTitle:@"开始顺向传值" forState:UIControlStateNormal];
    [self.attributesBtn addTarget:self action:@selector(attributesClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.attributesBtn];
    
}

-(void) attributesClick {
    EmoInputAttributesViewController *share =[[EmoInputAttributesViewController alloc] init];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    share.attributesString = self.attributesField.text;
    [self.navigationController pushViewController:share animated:YES];
}

@end
